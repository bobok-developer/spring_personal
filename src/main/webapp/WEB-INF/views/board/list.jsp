<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
      <div class="container"> <!-- 게시판 영역 시작 -->
		<div class="row">
			<div class="col-12">
			    <div class="card">
			        <div class="card-body">
			            <a href="register" class="btn waves-effect waves-light btn-rounded btn-primary btn-sm float-right">글쓰기</a>
			            <h4 class="card-title float-left mb-0 mt-1 mr-2">온라인상담</h4>
			            <div class="dataTables_length" id="zero_config_length">
			            	<label>
			            	<select id="amountNumber" name="zero_config_length" aria-controls="zero_config" class="form-control form-control-sm">
			            		<option value="10">10개씩</option>
			            		<option value="25">25개씩</option>
			            		<option value="50">50개씩</option>
			            		<option value="100">100개씩</option>
			            	</select>
			            	</label>
			            </div>
			            <div class="table">
			                <table id="zero_config" class="table table-hover table-borderless">
			                    <thead class="border-bottom">
			                        <tr>
			                            <th class="text-center">분류</th>
			                            <th class="text-center">제목</th>
			                            <th class="text-center">글쓴이</th>
			                            <th class="text-center">등록일</th>
			                            <th class="text-center">조회수</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                    	<sec:authentication property="principal" var="member"/>
			                    	<c:forEach items="${list}" var="board">
			                        <tr>
			                            <td class="text-secondary text-center">${board.category}</td>
			                            <c:if test="${board.secret == true}">
			                            	<c:choose>
								                <c:when test="${board.writer eq member.vo.userid || member.authorities eq '[ROLE_ADMIN, ROLE_MEMBER]'}"> <!-- 작성자이거나 관리자일 때 -->
								                    <td><a href="get${pageMaker.cri.listLink}&bno=${board.bno}" class="text-secondary text-center"><i class="icofont-lock"></i><c:out value="${board.title}"/><span class="text-muted small"> [${board.replyCnt}]</span></a></td>
								                </c:when>
                								<c:otherwise>
                									<td class="text-secondary"><i class="icofont-lock"></i><c:out value="${board.title}"/><span class="text-muted small"> [${board.replyCnt}]</span></td>
                								</c:otherwise>
           									 </c:choose>
			                            	
			                            </c:if>
			                            <c:if test="${board.secret == false}">
			                            <td><a href="get${pageMaker.cri.listLink}&bno=${board.bno}" class="text-secondary text-center"><c:out value="${board.title}"/><span class="text-muted small"> [${board.replyCnt}]</span></a></td>
			                            </c:if>
			                            <td class="text-secondary text-center"><c:out value="${board.writer}"/></td>
			                            <td class="text-secondary text-center"><fmt:formatDate value="${board.regdate}"/></td>
			                            <td class="text-secondary text-center">${board.hitCount}</td>
			                        </tr>
			                        </c:forEach>
			                    </tbody>
			                </table>
			            </div>
			            <div class="row mt-5">
							<div class="col-sm-12 col-md-5">
				            	<div id="zero_config_filter" class="dataTables_filter">
				            	<form id="searchForm">
				            		<select id="searchMenu" name="type" class="custom-select custom-select-sm form-control form-control-sm col-md-4">
               							<option value="TC">제목 + 내용</option>
               							<option value="T">제목</option>
               							<option value="C">내용</option>
               							<option value="W">작성자</option>
                  					</select>
				            		<label>
			            			<input type="search" name="keyword" class="form-control form-control-sm ml-2" placeholder="" aria-controls="zero_config">
				            		</label>
				            		<button class="btn waves-effect waves-light btn-rounded btn-outline-primary btn-sm ml-3">검색</button>
				            		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				            		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				            		</form>
				            	</div>
			            	</div>
			            	<div class="col-sm-12 col-md-7">
			            		<div class="dataTables_paginate paging_simple_numbers float-right" id="zero_config_paginate">
			            			<ul class="pagination">
			            				<c:if test="${pageMaker.prev}">
			            				<li class="paginate_button page-item previous" id="zero_config_previous">
			            					<a href="list${pageMaker.cri.listLink2}&pageNum=${pageMaker.startPage - 1}" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">이전</a>
			            				</li>
			            				</c:if>
			            				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
			            				<li class="paginate_button page-item ${num == pageMaker.cri.pageNum ? 'active' : ''}">
			            					<a href="list${pageMaker.cri.listLink2}&pageNum=${num}" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">${num}</a>
			            				</li>
			            				</c:forEach>
			            				<c:if test="${pageMaker.next}">
			            				<li class="paginate_button page-item next" id="zero_config_next">
			            					<a href="list${pageMaker.cri.listLink2}&pageNum=${pageMaker.endPage + 1}" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">다음</a>
			            				</li>
			            				</c:if>
			            			</ul>
			            		</div>
			            	</div>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
      </div> <!-- 게시판 영역 끝 -->
      <!-- Result Modal-->
		    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		        aria-hidden="true">
		        <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <h5 class="modal-title" id="myModalLabel">Alert</h5>
		                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
		                        <span aria-hidden="true">×</span>
		                    </button>
		                </div>
		                <div class="modal-body">처리 완료</div>
		                <div class="modal-footer">
		                    <button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
		                </div>
		            </div>
		        </div>
		    </div>
            <script>
            	$(function() {
					var result = '${result}';
					
					checkModal(result);
					history.replaceState({}, null, null); // 히스토리 값 초기화
					function checkModal(result) {
						if(result === '' || history.state) { // 타입까지 비교
							return;
						}
						if(parseInt(result) > 0) {
							$(".modal-body").html("게시글이 정상적으로 등록되었습니다.");
						}
		            	$("#myModal").modal("show");
					}
					
					$("#amountNumber").change(function() {
						console.log(location);
						location.href = "list${pageMaker.cri.listLink3}&amount=" + $(this).val();
						
					}).val('${pageMaker.cri.amount}');
					
					$("#searchMenu").val('${pageMaker.cri.type}')
						.next().val('${pageMaker.cri.keyword}')
				});
            	
            </script>
    </section>

  </main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
