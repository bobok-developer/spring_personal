'<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="../../views/includes/header.jsp"/>
  <main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>회원가입</h2>
          <ol>
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li>Sign up</li>
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
	                <h2 class="mt-3 text-center">회원가입</h2>
	                <p class="text-center">간단한 회원가입 후 킴스안과 홈페이지 서비스를 이용해 보세요.</p>
                    <form class="mt-4" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group col-md-8 float-left px-0">
                                    <label class="text-dark">아이디</label>
                                    <input class="form-control userid_input" type="text" name="userid" check_result="fail" required>
                                </div>
                                <div class="form-group col-md-3 float-right mt-5 mb-0 px-0 ml-3">
                                    <!-- <button id="btn-id" class="btn btn-sm waves-effect waves-light btn-rounded btn-outline-success id_overlap_button" onclick="id_overlap_check()">중복확인</button> -->
                                   <!--  <h2 id="id_check_sucess"><i class="icofont-check-circled text-success"></i></h2> -->
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
                                    <input class="form-control" type="text" name="userName" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark">이메일</label>
                                    <input class="form-control" type="text" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" >전화번호</label>
                                    <input class="form-control" type="text" name="tel" placeholder="하이픈(-) 없이 입력" required>
                                </div>
                            </div>
                            <div class="col-lg-12 text-center">
                                <button id="btnSignUp" class="btn btn-block waves-effect waves-light btn-rounded btn-outline-info mb-3">회원가입하기</button>
                            </div>
                             <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<!--                             <div class="col-lg-12 text-center mt-5">
                                킴스안과에 가입하시겠습니까? <a href="#" class="text-danger">회원가입</a>
                            </div> -->
                            <div class="col-lg-12 text-center mt-3">
                            	<a href="#" class="text-info mr-2">아이디 찾기</a>
                            	<a href="#" class="text-info">비밀번호 찾기</a>
                            </div>
						</div>
					</form>
                </div>
            </div>
       </div>
</div>
      
<script>
$("#btnSignUp").click(function() {
	confirm("회원가입을 하시겠습니까?");
	
});
</script>
</section>

</main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
