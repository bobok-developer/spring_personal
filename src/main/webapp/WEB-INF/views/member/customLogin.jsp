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
          <h2>로그인</h2>
          <ol>
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li>Login</li>
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
	                <h2 class="mt-3 text-center">로그인</h2>
	                <!-- <p class="text-center">Enter your email address and password to access admin panel.</p> -->
                    <form class="mt-4" method="post" action="${pageContext.request.contextPath}/login">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" for="uname">아이디</label>
                                    <input class="form-control" id="uname" type="text" name="username">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" for="pwd">비밀번호</label>
                                    <input class="form-control" id="pwd" type="password" name="password">
                                </div>
                            </div>
                            <div class="col-lg-12 text-center mt-3">
                                <button class="btn btn-block waves-effect waves-light btn-rounded btn-outline-info mb-3">로그인하기</button>
                                <img alt="카카오로그인" src="${pageContext.request.contextPath}/resources/assets/img/kakao_login_medium_wide.png" onclick="loginWithKakao()">
                                <%-- <a href="/main/kakao_login.ajax"><img alt="카카오로그인" src="${pageContext.request.contextPath}/resources/assets/img/kakao_login_medium_wide.png"></a> --%>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="col-lg-12 text-center mt-5">
                                킴스안과에 가입하시겠습니까? <a href="${pageContext.request.contextPath}/member/signUp" class="text-danger">회원가입</a>
                            </div>
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
    </section>
	<!-- 카카오 로그인 -->
	<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			Kakao.init('782f162a7272734e440b80b9cdb6c6c7');
			Kakao.isInitialized();
		});
		
		function loginWithKakao() {
			Kakao.Auth.authorize({ 
				redirectUri: 'http://localhost:8080/kakao_callback' 
				}); 
			}

	</script>

  </main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
