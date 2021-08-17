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
          <h2>회원정보수정</h2>
          <ol>
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li>My Page</li>
            <li>회원정보수정</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
      <div class="container"> <!-- 템플릿 시작 -->
		<div class="auth-box row">
			<div class="col-lg-6 col-md-6 modal-bg-img">
				<img src="${pageContext.request.contextPath}/resources/assets/img/instagram_profile_image.png" alt="logo">
			</div>
            <div class="col-lg-5 col-md-7 bg-white">
            	<div class="p-3">
	                <h2 class="mt-3 text-center"></h2>
	                <p class="text-center">나의 회원 정보를 수정할 수 있습니다.</p>
	                <sec:authentication property="principal" var="member"/>
                    <form class="mt-4 needs-validation" method="post" name="modify" novalidate>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group col-md-8 float-left px-0">
                                    <label class="text-dark">아이디(수정 불가)</label>
                                    <input class="form-control userid_input" type="text" name="userid" value="${member.vo.userid}" readonly>
                                </div>

                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" for="pwd">비밀번호</label>
                                    <input class="form-control" id="pwd" type="password" name="userpw" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark">이름(실명)</label>
                                    <input class="form-control" type="text" name="userName" value="${member.vo.userName}" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark">이메일</label>
                                    <input class="form-control" type="text" name="email" value="${member.vo.email}" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" >전화번호</label>
                                    <input class="form-control" type="text" name="tel" placeholder="하이픈(-) 없이 입력" value="${member.vo.tel}" required>
                                </div>
                            </div>
                            <div class="col-lg-12 text-center">
                                <button id="btnModify" class="btn btn-block waves-effect waves-light btn-rounded btn-outline-info mb-3" >정보수정</button>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="col-lg-12 text-right mt-3">
                            	<button id="btnRemove" class="btn waves-effect waves-light btn-rounded btn-light" formaction="remove">회원탈퇴</button>
                            </div>
						</div>
					</form>
                </div>
            </div>
       </div>
</div>
<!-- 폼 유효성 검사 -->
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
<script>
$("#btnModify").click(function() {
	if(confirm("수정하시겠습니까?")) {
		modify.action = "${path}/member/modify";
		modify.submit();
		alert("수정이 완료되었습니다. 다시 로그인 해주세요.");
	}
});

$("#btnRemove").click(function() {
	confirm("정말 탈퇴하시겠습니까?");
});
</script>
</section>

</main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
