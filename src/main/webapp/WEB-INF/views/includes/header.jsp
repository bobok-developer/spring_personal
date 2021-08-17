<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>킴스안과</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/resources/assets/img/favicon.png" rel="icon">

  <!-- Google Fonts -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
  <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"> -->

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/dist/css/style.min.css" rel="stylesheet">
  
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/resources/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/jquery/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/ko.min.js" integrity="sha512-3kMAxw/DoCOkS6yQGfQsRY1FWknTEzdiz8DOwWoqf+eGRN45AmjS2Lggql50nCe9Q6m5su5dDZylflBY2YjABQ==" crossorigin="anonymous"></script>
  
  
  <!-- =======================================================
  * Template Name: Medilab - v2.1.1
  * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex mt-5">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="eyeclinic@example.com">eyeclinic@example.com</a>
        <i class="icofont-phone"></i> (041) 551-1234
        <i class="icofont-google-map"></i> 천안시 신부동
      </div>
      <sec:authentication property="principal" var="member"/>
      <div class="social-links">
<%--       	<sec:authorize access="isAnonymous()">
	        <a href="${pageContext.request.contextPath}/member/customLogin" class="login"><i class="icofont-login mr-2"></i>로그인</a>
	        <a href="${pageContext.request.contextPath}/member/signUp" class="sign-up"><i class="icofont-sign-in mr-2"></i>회원가입</a>
	    </sec:authorize> --%>
	    <sec:authorize access="isAuthenticated()">
	    	<form method="post" action="${pageContext.request.contextPath}/customLogout">
	    	<span>${member.vo.userName} 님 환영합니다.</span>
	    	<sec:authentication property="principal" var="pinfo"/>
		    <a href="${pageContext.request.contextPath}/member/prevModify" class="mr-2"><i class="icofont-info-circle mr-2"></i>마이 페이지</a>
			<button class="btn btn-sm waves-effect waves-light btn-rounded btn-outline-light">
			    <i class="icofont-logout"></i>
			    로그아웃
			</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
           </form>
	    </sec:authorize>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="${pageContext.request.contextPath}/">KimsEyeClinic</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="${pageContext.request.contextPath}/">홈</a></li>
          <li><a href="${pageContext.request.contextPath}/#about">병원소개</a></li>
          <li><a href="${pageContext.request.contextPath}/#departments">진료소개</a></li>
          <li><a href="${pageContext.request.contextPath}/#doctors">의료진소개</a></li>
          <li><a href="${pageContext.request.contextPath}/board/list">온라인상담</a></li>
          <li><a href="${pageContext.request.contextPath}/#contact">오시는길</a></li>
          <sec:authorize access="isAnonymous()">
	      	<li><a href="${pageContext.request.contextPath}/member/customLogin" class="login"><i class="icofont-login mr-2"></i>로그인</a></li>
	        <li><a href="${pageContext.request.contextPath}/member/signUp" class="sign-up"><i class="icofont-sign-in mr-2"></i>회원가입</a></li>
	      </sec:authorize>
        </ul>
      </nav><!-- .nav-menu -->

      <a href="${pageContext.request.contextPath}/#appointment" class="appointment-btn scrollto">진료예약</a>

    </div>
  </header><!-- End Header -->