<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<jsp:include page="../../views/includes/header.jsp"/>
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
	    <div class="container">
	        <div class="d-flex justify-content-between align-items-center">
	          <h2>게시판</h2>
	          <ol>
	            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
	            <li>게시판</li>
	            <li>온라인상담</li>
	          </ol>
	        </div>
	    </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="inner-page">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<form method="post">
								<div class="form-group mb-0">
								    <label for="bno" class="font-wieght-bold text-primary">분류</label>
								    <span class="ml-1""><c:out value="${board.category}"/></span>
						    	</div>
								<div class="form-group mb-0">
								    <label for="title" class="font-wieght-bold text-primary">제목</label>
								    <c:if test="${board.secret == true}">
								    	<span class="ml-1 font-weight-bold" id="title" name="title"><i class="icofont-lock"></i><c:out value="${board.title}"/></span>
								    </c:if>
								    <c:if test="${board.secret == false}">
								    	<span class="ml-1 font-weight-bold" id="title" name="title"><c:out value="${board.title}"/></span>
								    </c:if>
						    	</div>
								<div class="form-group mb-3">
								    <label for="writer" class="font-wieght-bold text-primary">글쓴이</label>
								    <span class="ml-1" id="writer" name="writer">${board.writer}</span>
						    	</div>
								<div class="form-group mb-3">
								    <label for="content" class="font-wieght-bold text-primary">내용</label>
								    <div class="card mb-4 py-3 border-bottom-muted">
			                        	<div class="card-body" id="content" name="content">
			                            	<c:out value="${board.content}"/>
			                            </div>
			                        </div>
						    	</div>
						    	<div class="form-group mt-5">
						    		<label class="font-wieght-bold text-primary">첨부파일</label> 
						    		<!-- 파일목록 -->
						    		<div class="uploadResult">
										<ul class="list-group">
										</ul>
									</div>
						    	</div>
								<a href="list${cri.listLink}" data-oper="list" class="btn waves-effect waves-light btn-rounded btn-outline-primary float-right">목록</a>
								<sec:authorize access="isAuthenticated()">
									<sec:authentication property="principal" var="pinfo"/>
									<c:if test="${pinfo.username == board.writer}">
								    	<a href="modify${cri.listLink}&bno=${board.bno}" data-oper="modify" class="btn waves-effect waves-light btn-rounded btn-outline-info float-right mx-2">글수정</a>
								    	<!-- <button data-oper="remove" class="btn waves-effect waves-light btn-rounded btn-outline-danger float-right" formaction="remove">삭제하기</button> -->
								    </c:if>
							    </sec:authorize>
							    <%-- <input type="hidden" class="form-control" id="bno" name="bno" required value="${board.bno}"> --%>
							    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							</form>
						</div>
					</div>
					<div class="card shadow mb-4">
	            		<div class="card-header py-3">
	                		<h6 class="m-0 font-weight-bold text-primary float-left"><i class="fa fa-comments fa-fw"></i> 댓글</h6>
	                		<sec:authorize access="isAuthenticated()">
	                		<button id="addReplyBtn" class="btn waves-effect waves-light btn-rounded btn-primary float-right mr-1">새 댓글 작성</button>
	                		</sec:authorize>
	            		</div>
			            <div class="card-body">
			            	<ul class="list-group chat">
			            	
			         		</ul>
				         	<div class="reply-footer d-flex">
				         		<ul class="pagination mx-auto mt-4">
	                				<li class="paginate_button page-item previous" id="dataTable_previous">
	                					<a href="#" class="page-link">Prev</a>
	                				</li>
	                				<li class="paginate_button page-item active">
	                					<a href="#" class="page-link">1</a>
	                				</li>
	               					<li class="paginate_button page-item next" id="dataTable_next">
	               						<a href="#" class="page-link">Next</a>
	               					</li>
	               				</ul>
				    		</div>
		                </div>
					</div>
					</div>
					<!-- Result Modal-->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					    <div class="modal-dialog" role="document">
					        <div class="modal-content">
					            <div class="modal-header">
					                <h5 class="modal-title" id="myModalLabel">댓글창</h5>
					                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
					                    <span aria-hidden="true">×</span>
					                </button>
					            </div>
					            <div class="modal-body">
						            <form method="post" class="needs-validation" novalidate>
						            	<div class="form-group">
										    <label for="reply" class="font-wieght-bold text-info">reply</label>
										    <input type="text" class="form-control" id="reply" name="reply" required placeholder="댓글을 입력하세요">
										    <div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this field.</div>
										</div>
						                <div class="form-group">
										    <label for="replyer" class="font-wieght-bold text-info">replyer</label>
										    <input type="text" class="form-control" id="replyer" name="replyer" required placeholder="댓글쓴이">
										    <div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this field.</div>
						   				</div>
						                <div class="form-group">
										    <label for="replyDate" class="font-wieght-bold text-info">replyDate</label>
										    <input type="text" class="form-control" id="replyDate" name="replyDate" required placeholder="2021-01-01 13:50">
										    <div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this field.</div>
						   				</div>
						            </form>
					            </div>
					            <div class="modal-footer">
					                <button id="modalModBtn" class="btn btn-warning btn-sm ac" type="button" data-dismiss="modal">수정</button>
					                <button id="modalRemoveBtn" class="btn btn-danger btn-sm ac" type="button" data-dismiss="modal">삭제</button>
					                <button id="modalRegBtn" class="btn btn-primary btn-sm ac" type="button" data-dismiss="modal">등록</button>
					                <button id="modalCloseBtn" class="btn btn-secondary btn-sm" type="button" data-dismiss="modal">닫기</button>
					            </div>
					        </div>
					    </div>
					</div>
					<!-- Result Modal-->
				    <div class="modal fade" id="imageModal">
				        <div class="modal-dialog modal-xl" role="document">
				            <div class="modal-content">
				                <div class="modal-body text-center">
				                	<img class="mw-100">
				                </div>
				            </div>
				        </div>
				</div>
			</div>
			<script>
			// Disable form submissions if there are invalid fields
			(function() {
			  'use strict';
			  window.addEventListener('load', function() {
			    // Get the forms we want to add validation styles to
			    var forms = document.getElementsByClassName('needs-validation');
			    // Loop over them and prevent submission
			    var validation = Array.prototype.filter.call(forms, function(form) {
			      form.addEventListener('submit', function(event) {
			        if (form.checkValidity() === false) {
			          event.preventDefault();
			          event.stopPropagation();
			        }
			        form.classList.add('was-validated');
			      }, false);
			    });
			  }, false);
			})();
			</script>
			
			<script src="${pageContext.request.contextPath}/resources/assets/js/reply.js"></script>

			<script>
				var cp = '${pageContext.request.contextPath}';
				var bno = <c:out value="${board.bno}"/>;
				var replyUL = $(".chat");
				var pageNum = 1;
				
				showList(pageNum);
				
				function showList(page) { //cp:cp
					replyService.getList({bno:bno, page:page, cp:cp}, function(result) {
						// 댓글 목록 출력
						var list = result.list;
						console.log(result);
						console.log(list);
						
						// 댓글 썼을 때 마지막 페이지 봐야 함.
						if(page == -1) showList(result.realEnd);
						
						var str = "";
						replyUL.html("");
						for(var i in list) {
							str += '<li class="list-group-item" data-rno="' + list[i].rno + '">';
							str += '	<div class="header">';
							str += '   		<strong>' + list[i].replyer + '</strong>';
							str += '  		<small class="float-right">' + replyService.displayTime(list[i].replyDate) + '</small>';
							str += '	</div>';
							str += '	<p class="mt-2">' + list[i].reply + '</p>';
							str += '</li>';
						}
						replyUL.html(str);
						
						// 댓글 페이징
						str = '<ul class="pagination float-right mt-4">'; 
						if(result.prev) {
	    					str += '<li class="paginate_button page-item previous">';
	    					str += '	<a class="page-link" href="' + (result.startPage - 1) + '">Prev</a>';
	    					str += '</li>';
						}
						
						for(var i = result.startPage ; i <= result.endPage ; i++) {
							var active = result.cri.pageNum == i ? "active" : "";
							str += '<li class="paginate_button page-item ' + active + '">';
							str += '	<a class="page-link" href="' + i + '">' + i + '</a>';
							str += '</li>';
						}
						
						if(result.next) {
							str += '<li class="paginate_button page-item next">';
							str += '	<a class="page-link" href="' + (result.endPage + 1) + '">Next</a>';
							str += '</li>';
						}
						
	       				str += '</ul>';
	       				$(".reply-footer").html(str);
					})
				}
				
				var replyer = '';
				<sec:authorize access="isAuthenticated()">
            		replyer = '<sec:authentication property="principal.username"/>';
           	 	</sec:authorize>
				var csrf = '${_csrf.headerName}';
				var csrfToken = "${_csrf.token}";
				$(document).ajaxSend(function(e, xhr) {
					xhr.setRequestHeader(csrf, csrfToken); // 공통사항 부여
				})
				
				$(function() {
					// 등록폼 버튼 이벤트
					$("#addReplyBtn").click(function() {
						$("#myModal").find("input").val("");
						$("#replyer").val(replyer).prop("readonly", true);
						$("#replyDate").closest("div").hide();
						$(".ac").hide().eq(2).show();
						$("#myModal").modal("show");
					})
					
					// 댓글목록 모달팝업 이벤트
					$(".chat").on("click", "li", function() {
						var rno = $(this).data("rno");
						console.log(rno);
						replyService.get({rno:rno, cp:cp}, function(result) {
							console.log(result);
							$("#reply").val(result.reply);
							$("#replyer").val(result.replyer).prop("readonly", true);
							$("#replyDate").val(replyService.displayTime(result.replyDate)).prop("readonly", true).closest("div").show();
							$("#myModal").data("rno", rno)
							
							$(".ac").show().eq(2).hide();
							if(!replyer) {
								$(".ac").hide();
							}
							$("#myModal").modal("show");
						});
					})
					
					// 등록 적용버튼 이벤트
					$("#modalRegBtn").click(function() {
						var reply = {bno:bno, reply:$("#reply").val(), replyer:$("#replyer").val(), cp:cp};
						replyService.add(reply, function(result) {
							alert("댓글이 등록되었습니다.");
							$("#myModal").modal("hide");
							
							showList(-1);
						});
					});
					
					// 수정 적용버튼 이벤트
					$("#modalModBtn").click(function() {
						var reply = {rno: $("#myModal").data("rno"), reply:$("#reply").val(), replyer:replyer, cp:cp};
						replyService.update(reply, function(result) {
							alert("수정이 완료되었습니다.");
							$("#myModal").modal("hide");
							
							showList(pageNum);
						});
					});
					// 삭제 적용버튼 이벤트
					$("#modalRemoveBtn").click(function() {
						var rno = {rno: $("#myModal").data("rno") ,cp:cp};
						replyService.remove(rno, function(result) {
							alert("삭제가 완료되었습니다.");
							$("#myModal").modal("hide");
							
							showList(pageNum);
						});
					});
					
					// 댓글 페이지 버튼 이벤트
					$(".reply-footer").on("click", "a", function() {
						event.preventDefault();
						
						pageNum = $(this).attr("href");
						showList(pageNum);
					});
				})

				$.getJSON("${pageContext.request.contextPath}/board/getAttachList", {bno:bno}, function(uploadResultArr) {
					
					var str = "";
					for(var i in uploadResultArr) {
						var obj = uploadResultArr[i];
						console.log(obj);
						str += "<li class='list-group-item' "
						str += " data-filename='" + obj.fileName
						str += "' data-image='" + obj.image
						str += "' data-uuid='" + obj.uuid
						str += "' data-uploadpath='" + obj.uploadPath
						str += "' >"
						if(!obj.image) {
							str += "<a href='${pageContext.request.contextPath}/download?fileName=" + obj.downPath + "'><i class='fas fa-paperclip text-muted'></i> " +  obj.fileName + "</a>"
						}
						else {
							str += "<a href='javascript:showImage(\"" + obj.downPath + "\")'>";
							str += "<img src='${pageContext.request.contextPath}/display?fileName=" + obj.thumbPath + "'></a>";
						}
						str += "</li>";
					}
					$(".uploadResult ul").html(str);
				})

				function showImage(path) {
					$("#imageModal img").attr("src", "${pageContext.request.contextPath}/display?fileName="+path)
					$("#imageModal").modal("show");
				}
/* 			}) */
			</script>
		</div>
	</section>
  </main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
