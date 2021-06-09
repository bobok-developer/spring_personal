<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
      <div class="container">
        <div class="card shadow mb-4">
        	<div class="card-header py-3">
           		<h6 class="m-0 font-weight-bold text-primary">글수정</h6>
            </div>
            <div class="card-body">
            	<form method="post" class="needs-validation" novalidate>
            	<sec:authentication property="principal" var="member"/>
            	<div class="form-group mb-4 col-sm-12 px-0">
	                <select class="custom-select col-md-2" id="inlineFormCustomSelect" name="category" required>
	                	<option selected="">${board.category}</option>
	                    <option>진료과목선택</option>
	                    <option value="백내장">백내장</option>
	                    <option value="녹내장">녹내장</option>
	                    <option value="라식/라섹">라식/라섹</option>
	                    <option value="노안">노안</option>
	                    <option value="드림렌즈">드림렌즈</option>
	                    <option value="기타">기타</option>
	                </select>
	                    <div class="form-group col-sm-12 col-md-10 float-right pr-0">
						    <input type="text" class="form-control" id="title" placeholder="게시글 제목 입력" name="title" value="${board.title}" required="required">
						    <div class="valid-feedback">Valid.</div>
							<div class="invalid-feedback">Please fill out this field.</div>
   						</div>
   						<div class="form-check form-check-inline mt-3">
	                        <input class="form-check-input" type="checkbox" name="secret" value="${board.secret}">
	                        <label class="form-check-label">비밀글 설정</label>
                        </div>
            	</div>
		            <div class="form-group">
					    <textarea class="form-control" rows=10 id="content" placeholder="게시글 내용 입력" name="content" required>${board.content}</textarea>
					    <div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
		   			</div>
					<div class="form-group col-sm-2 px-0">
						<label>작성자</label>
					    <input type="text" class="form-control" id="writer" placeholder="게시글 작성자" name="writer" required readonly value='<sec:authentication property="principal.username"/>'>
					    <div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
		   			</div>
		   			<div class="form-group mt-5">
			    		<label class="font-wieght-bold text-primary">첨부파일</label>
			    		<div class="uploadDiv mb-2">
							<input class="btn btn-outline-info btn-sm" id="files" type="file" name="files" multiple> <!-- 컨트롤러의 파라미터랑 name 맞춰야 함. -->
						</div> 
			    		<!-- 파일목록 -->
			    		<div class="uploadResult">
							<ul class="list-group">
							</ul>
						</div>
			    	</div>
					<button data-oper="modify" class="btn waves-effect waves-light btn-rounded btn-primary float-right ml-2">수정하기</button>
					<button id="removeBtn" data-oper="remove" class="btn waves-effect waves-light btn-rounded btn-outline-danger float-right" formaction="remove">삭제하기</button>
					<input type="hidden" class="form-control" id="bno" name="bno" required value="${board.bno}">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                 </form>
             </div>
      	</div>
      	<div class="card shadow mb-4">
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
      </div>
      
	<script>
	$("#removeBtn").click(function() {
		confirm("정말 삭제하시겠습니까?")
	})
	</script>
	<script>
	var bno = <c:out value="${board.bno}"/>;
	var cloneObj = $(".uploadDiv").clone();
	var csrf = '${_csrf.headerName}';
	var csrfToken = "${_csrf.token}";
	
	function checkExtension(name, size) {
		var regex = /(.*?)\.(exe|sh|jsp|php)/gi;
		var maxSize = 1024 * 1024 * 5; // 5mb
		if(size >= maxSize) {
			alert("파일 사이즈 초과")
			return false;
		}
		
		if(regex.test(name)) {
			alert("해당 종류는 업로드 할 수 없음.")
			return false;
		}
		return true;
	}
	$(function() {
		function showUploadedFile(uploadResultArr) {
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
					str += "<i class='fas fa-paperclip text-muted'></i> " +  obj.fileName;
				}
				else {
					str += "<img src='${pageContext.request.contextPath}/display?fileName=" + obj.thumbPath + "'>";
				}
				str += "<i class='fas fa-times text-danger removeFileBtn ml-2'></i>"
				str += "</li>";
			}
			$(".uploadResult ul").append(str);
		}
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
					str += "<i class='fas fa-paperclip text-muted'></i> " +  obj.fileName;
				}
				else {
					str += "<img src='${pageContext.request.contextPath}/display?fileName=" + obj.thumbPath + "'>";
				}
				str += "<i class='fas fa-times text-danger removeFileBtn'></i>"
				str += "</li>";
			}
			$(".uploadResult ul").append(str);
		})
		
		$(".uploadResult").on("click", ".removeFileBtn", function() {
			var $li = $(this).closest("li");
			var data = {
				fileName : $li.data("filename"), 
				image : $li.data("image"),
				uuid : $li.data("uuid"),
				uploadPath : $li.data("uploadpath")
			}
			console.log(data);
			console.log(JSON.stringify(data));
			 $.ajax({
				url : "${pageContext.request.contextPath}/deleteFile",
				type : "post",
				data : JSON.stringify(data),
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrf, csrfToken)
				},
				contentType : "application/json; charset=utf-8",
				success : function(result) {
					alert("파일이 삭제되었습니다. ");
					$li.remove();
				}
			});
		});
		
		$(".uploadDiv").on("change", "#files", function() {
			var formData = new FormData();
 			var files = $("#files")[0].files;
			console.log(files); 
			
			for(var i in files) {
				if(!checkExtension(files[i].name, files[i].size)) {
					$(".uploadDiv").html(cloneObj.html());
					return false;
				}
				formData.append("files", files[i]);
			}
			console.log(formData);
			
			$.ajax({
				url: '${pageContext.request.contextPath}/uploadAction',
				type: 'post',
				data: formData,
				dataType: 'json',
				beforeSend: function(xhr) {
					xhr.setRequestHeader(csrf, csrfToken)
				},
				processData: false,
				contentType: false,
				success: function(result) {
					console.log(result);
					showUploadedFile(result);
					$(".uploadDiv").html(cloneObj.html());
				}
			});
		})
		$("button").click(function() {
			if($(this).data("oper") !== "modify") return;
			 
			event.preventDefault();
			var str = "";
			var attrs = ["fileName", "uuid", "uploadPath", "image"];
			$(".uploadResult li").each(function(i, it) {
				for(var j in attrs) {
					var tmp = '<input type="hidden" name="attachList[' + i + '].';
					tmp += attrs[j] + '" value="' + $(it).data(attrs[j].toLowerCase()) +  '">';
					console.log(tmp);
					str += tmp;
				}
			});
			console.log(str);
			/* $(this).closest("form").append(str);
			console.log($(this).closest("form").serialize()); */
			$(this).closest("form").append(str).submit();
		})
	})
	</script>
    </section>

  </main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
