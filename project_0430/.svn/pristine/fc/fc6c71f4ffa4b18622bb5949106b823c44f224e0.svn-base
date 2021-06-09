<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
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
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
      <div class="social-links mb-3">
      	<%-- <sec:authorize access="isAnonymous()">
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
	<sec:authentication property="principal" var="member"/>
      <h1 class="logo mr-auto"><a href="${pageContext.request.contextPath}/">KimsEyeClinic</a></h1>
      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="${pageContext.request.contextPath}/">홈</a></li>
          <li><a href="#about">병원소개</a></li>
          <li><a href="#departments">진료소개</a></li>
          <li><a href="#doctors">의료진소개</a></li>
          <li class="nav-counsel"><a href="${pageContext.request.contextPath}/board/list">온라인상담</a></li>
          <li><a href="#contact">오시는길</a></li>
		  <sec:authorize access="isAnonymous()">
			<li><a href="${pageContext.request.contextPath}/member/customLogin" class="login"><i class="icofont-login mr-2"></i>로그인</a></li>
		    <li><a href="${pageContext.request.contextPath}/member/signUp" class="sign-up"><i class="icofont-sign-in mr-2"></i>회원가입</a></li>
	  	  </sec:authorize>
	  	  
        </ul>
      </nav><!-- .nav-menu -->
      <a href="${pageContext.request.contextPath}/#appointment" class="appointment-btn scrollto">진료예약</a>
    </div>

  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>Welcome to Kims eye clinic</h1>
      <h2>최상의 의료 서비스를 제공하겠습니다. 어서오세요. 킴스안과 입니다.</h2>
      <a href="#about" class="btn-get-started scrollto">킴스안과 둘러보기.</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="content">
              <h3>킴스안과만의<br>차별점은?</h3>
              <p>
                킴스안과만의 차별점을 소개해드리겠습니다.
              </p>
            </div>
          </div>
          <div class="col-lg-8 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>최상의 의료진</h4>
                    <p>각 분야별 전문 의료진으로 구성되어 있습니다.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>최신 첨단 장비</h4>
                    <p>세밀하고 정확한 진단을 위한 최신 첨단 장비들이 구비되어 있습니다.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>수많은 인증 경력</h4>
                    <p>세계적인 여러 의학기관에서 인증을 받았습니다.</p>
                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">
          <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <h3>눈이 편안한 세상, 눈이 건강한 세상</h3>
            <p>킴스안과가 함께 만들어 가겠습니다.</p>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">1. 소통</a></h4>
              <p class="description">항상 고객의 입장을 생각하며 명쾌하게 보여주고, 정확하고 근본적인 도움을 드립니다.</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">2. 신뢰</a></h4>
              <p class="description">내 가족이라면 어떻게 대할 것인지 생각합니다.</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">3. 안전</a></h4>
              <p class="description">첫째도 안전, 둘째도 안전! 안전을 최우선시 합니다.</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container">

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="icofont-doctor-alt"></i>
              <span data-toggle="counter-up">4</span>
              <p>원장선생님들</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="icofont-patient-bed"></i>
              <span data-toggle="counter-up">5</span>
              <p>진료 과목</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="icofont-laboratory"></i>
              <span data-toggle="counter-up">11</span>
              <p>최신 의료 장비</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="icofont-award"></i>
              <span data-toggle="counter-up">15</span>
              <p>인증</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Appointment Section ======= -->
    <section id="appointment" class="appointment section-bg">
      <div class="container">

        <div class="section-title">
          <h2>진료예약 및 안내</h2>
          <p>온라인 예약은 당일예약이 불가능합니다. 당일 진료를 원하시면 직접 내원하셔서 순서대로 진료 받으시면 됩니다. 평일 5시 이후로는 전 날 예약이 마감 되오니 전 날 예약은 5시 이전에 예약 부탁드립니다. 선택하신 시간은 확정 된 것이 아니고 확인 후 전화 드리겠습니다.</p>
        </div>
		<sec:authorize access="isAnonymous()">
        <form action="forms/appointment.php" method="post" role="form" class="php-email-form">
          <div class="form-row">
            <div class="col-md-4 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="로그인 후 이용 가능합니다." disabled data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <input type="email" class="form-control" name="email" id="email" disabled data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <input type="tel" class="form-control" name="phone" id="phone" disabled data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4 form-group">
              <input type="datetime" name="date" class="form-control datepicker" id="date" disabled data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <select name="department" id="department" class="form-control">
                <option value="">진료 과목 선택</option>
                <option value="백내장">백내장</option>
                <option value="녹내장">녹내장</option>
                <option value="라식/라섹">라식/라섹</option>
                <option value="노안">노안</option>
                <option value="드림렌즈">드림렌즈</option>
                <option value="기타">기타</option>
              </select>
              <div class="validate"></div>
            </div>
          </div>
          <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">신청이 완료되었습니다. 확인 후 전화 드리겠습니다.</div>
          </div>
          
        </form>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="member"/>
		<form action="forms/appointment.php" method="post" role="form" class="php-email-form">
          <div class="form-row">
            <div class="col-md-4 form-group">
              <input type="text" name="userName" class="form-control" id="name" value="${member.vo.userName}" readonly data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <input type="email" class="form-control" name="email" id="email" value="${member.vo.email}" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <input type="tel" class="form-control" name="tel" id="phone" value="${member.vo.tel}" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-row">
            <div class="col-md-4 form-group">
              <input type="datetime" name="date" class="form-control datepicker" id="date" placeholder="희망 예약 날짜" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
              <select name="department" id="department" class="form-control">
                <option value="">진료 과목 선택</option>
                <option value="백내장">백내장</option>
                <option value="녹내장">녹내장</option>
                <option value="라식/라섹">라식/라섹</option>
                <option value="노안">노안</option>
                <option value="드림렌즈">드림렌즈</option>
                <option value="기타">기타</option>
              </select>
              <div class="validate"></div>
            </div>
          </div>
          <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">신청이 완료되었습니다. 확인 후 전화 드리겠습니다.</div>
          </div>
          <div class="text-center"><button type="submit">진료 예약 신청하기.</button></div>
        </form>
        </sec:authorize>
      </div>
    </section><!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments">
      <div class="container">

        <div class="section-title">
          <h2>진료 소개</h2>
          <p>킴스 안과의 진료 과목들을 소개하겠습니다.</p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-toggle="tab" href="#tab-1">백내장</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab-2">녹내장</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab-3">라식/라섹</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab-4">노안</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab-5">드림렌즈</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>백내장</h3>
                    <p class="font-italic">눈 속의 수정체가 투명성을 잃고 혼탁해져 보이는 것이 흐려지게 되는 질환입니다. 수술을 통해 혼탁한 수정체를 제거하고 인공수정체를 삽입하게 되면 다시 예전과 같은 밝은 시력을 찾을 수 있습니다.</p>
                    <p>백내장의 기본적 증상은 잘 안보이는 것이지만, 다양한 양상으로도 나타납니다. 환자분들마다의 표현 방법도 저마다 조금씩 차이가 있으시므로, 예를 들어 보겠습니다. 이처럼 백내장의 증상이 다양한 이유는 백내장의 종류가 사람마다 다를 수 있고, 동반된 안과적 특이 소견도 사람마다 다르기 때문입니다.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/departments-1.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>녹내장</h3>
                    <p class="font-italic">안압이 높아지거나 다른 원인에 의해 시신경이 약해지면서 시야가 점점 좁아지다가 결국엔 실명에 이르는 병입니다. 초기에는 자각 증상이 없어 진단 기회를 놓치기도 합니다. 국내 녹내장 환자중 10명 중 7명이 다른 증상으로 안과에 방문해 녹내장을 우연히 발견합니다.</p>
                    <p>녹내장은 일찍 치료할수록 시기능장애를 최소한으로 막을 수 있어 조기진단이 중요합니다. 녹내장의 위험인자로는 고령, 당뇨, 고혈압이나 저혈압, 근시, 녹내장의 가족력 등이 있어 해당되는 경우 녹내장의 조기발견을 위해 매년 정기적인 안과 검진을 권장합니다. 녹내장의 치료는 조기발견과 꾸준한 관리가 최선입니다.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/departments-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>라식/라섹</h3>
                    <p class="font-italic">라식이 라섹수술이나 에피라식수술보다 큰 장점은 통증이 없고 회복이 매우 빠르며 근시 재발이 적고 각막혼탁이 거의 없는 수술입니다.</p>
                    <p>라섹(LASEK) 수술이란 각막의 가장 바깥 부분인 상피세포를 벗겨내고, 그 위에 직접 레이저를 조사하는 수술방법입니다. 각막 절편 (CORNEA FLAP)이라는 뚜껑구조물을 만들지 않기 때문에, 라식 수술에 비해 시력회복이 다소 느리고, 통증이 며칠간 지속될 수 있다는 단점은 있으나, 물리적 충격에 매우 강하고, 라식에 비해 수술 후 각막 두께를 더 두껍게 남길 수 있는, 안전성이 매우 뛰어난 수술 방법입니다.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/departments-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>노안</h3>
                    <p class="font-italic">가까운 거리에서의 초점이 흐려지며 특히 작은 글씨가 읽기가 힘든 증상으로 40대 중반부터 대부분 나타나게 되며, 나이가 들면서 수정체의 두께를 조절하는 모양체근의 탄력이 감소하여 발생하며, 백내장과 함께 진행하게 됩니다.</p>
                    <p>노안교정수술은 수술 전 20여 가지 정밀검사 결과를 바탕으로 환자의 연령과 안질환 유무, 수술 후 적응 가능성 등을 종합적으로 검토하여 각 개인에게 적합한 수술종류와 방법을 결정합니다.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/departments-4.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>드림렌즈</h3>
                    <p class="font-italic">눈이 더 이상 나빠지는 것을 막기 위해서는 올바른 생활습관은 물론 외모에 관심이 높은 아이들에게 안경 대신 자신감과 시각집중력을 향상시켜 줄 수 있는 드림렌즈를 착용시키세요! 잘못된 시력을 바로잡고, 스스로 크게 도와주는 우리 아이의 눈, 학습능률을 한뼘 더 성장시켜주세요.</p>
                    <p>내 아이의 눈 모양에 최적화된 렌즈를 맞추려면 많은 양의 시험용 렌즈를 가지고 있어야 합니다. 킴스안과는 충남권 최대규모의 드림렌즈, RGP bank를 운영하고 있어, 어떠한 경우에라도 안과 전문의가 직접 각막 모양을 확인하며 아이들의 눈에 딱 맞는 렌즈를 맞추어 드립니다.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/departments-5.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Departments Section -->

    <!-- ======= Doctors Section ======= -->
    <section id="doctors" class="doctors">
      <div class="container">

        <div class="section-title">
          <h2>의료진 소개</h2>
          <p>각 분야별 전문 의료진들을 소개합니다.</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>김은준 원장님</h4>
                <span>라식/라섹, 백내장, 노안</span>
                <p>서울대학교 의학박사</p>
                <p>대한 안과 학회</p>
                <p>미국 백내장 굴절 수술 학회</p>
                <p>유럽 백내장 굴절 수술 학회</p>
<!--                 <ul>
                	<li>서울대학교 의학박사</li>
                </ul> -->
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>이나은 원장님</h4>
                <span>녹내장, 백내장, 드림렌즈</span>
                <p>대한 안과 학과 정회원</p>
                <p>한국녹내장학회 정회원</p>
                <p>연세대학교 세브란스병원 녹내장 임상연구조교수</p>
                
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>박정진 원장님</h4>
                <span>라식/라섹, 드림렌즈</span>
                <p>서울아산병원 안과 전문의</p>
                <p>대한콘택트렌즈연구회 정회원</p>
                <p>미국시과학학회(ARVO)정회원</p>

              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/resources/assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>송보라 원장님</h4>
                <span>백내장, 노안</span>
                <p>고려대학교 의학박사</p>
                <p>고려대학교 안과 망막 전임의</p>
                <p>대한 안과 학회</p>
                <p>한국백내장굴절수술학회</p>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Doctors Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container">

        <div class="section-title">
          <h2>자주 묻는 질문과 답변</h2>
          <p>고객님들이 자주 묻는 질문에 대한 답변입니다.</p>
        </div>

        <div class="faq-list">
          <ul>
            <li data-aos="fade-up">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" class="collapse" href="#faq-list-1">백내장 수술의 절차가 궁급합니다.<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-1" class="collapse show" data-parent=".faq-list">
                <p>
                  백내장 수술에 소요되는 시간은 약 30~50분이며 전신마취를 하지 않고 부분마취를 해서 수술합니다. 수술전날 입원하면 수술에 필요한 피검사, 심전도검사, 흉부촬영, 소변검사, 인공수정체 도수 검사 등을 받습니다. 수술은 당일입원으로 당일퇴원을 하며 수술 후 당일 혹은 다음날 검진을 받게됩니다. 피검사, 흉부촬영, 소변검사, 심전도 검사 등은 외래에서 수술 예약을 하면서 미리 받을 수도 있습니다.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="100">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-2" class="collapsed">녹내장은 완치될수 있는 질환인가요?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-2" class="collapse" data-parent=".faq-list">
                <p>
                  완치될 수는 없으며 정기적으로 안과에 다니며 안압을 측정하셔야 합니다. 평생동안 약물, 레이저치료, 수술에 의해 안압을 조절하여 시야의 감소를 최소화해야 합니다.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="200">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-3" class="collapsed">시력 교정 수술 시 통증은 없나요? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-3" class="collapse" data-parent=".faq-list">
                <p>
                  수술은 극소 점안마취제 점안 하에 행해지므로 통증은 없습니다. 다만 기계에 닿는 느낌이나 차가운 느낌등은 날 수 있습니다. 수술 후 당일~하루동안 이물감이나 시린느낌이 있을 수 있으며 라섹은 수술후 2~3일간 통증이나 시림이 있을수 있습니다.
                </p>
                <p>
                  *통증을 느끼는 부분은 개개인의 차이가 있기때문에 개개인마다 느끼는 정도가 다를 수 있습니다.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="300">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-4" class="collapsed">시력교정수술은 몇 살부터 가능한가요?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-4" class="collapse" data-parent=".faq-list">
                <p>
                  라식,라섹은 시력의 변화가 없는 시기가 되었을 때 수술이 가능합니다. 일반적으로 만18세가 넘어야 수술이 가능하며,
나이가 되었더라도, 수술 전 6개월에서 1년 사이에 시력변화가 없는 경우에만 수술을 진행하고 있습니다.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="400">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-5" class="collapsed">노안수술은 부작용이 전혀 없나요?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-5" class="collapse" data-parent=".faq-list">
                <p>
                  노안수술을 고려하시는 분들에게 드리고 싶은 당부의 말씀은 노안수술에 대한 환상을 가져서는 안된다는 것입니다. 물론 원거리, 중간거리 그리고 근거리 시력의 개선효과가 있다는 것은 확실합니다만 아무리 우수한 인공관절일지라도 본연의 관절기능을 완벽히 대체할 수가 없듯이 하나님께서 우리에게 주신 수정체의 기능을 100% 대신할 수 있는 인공수정체도 없다는 점을 명심하셔야 합니다. 그러므로 수술했더라도 젊었을 당시와 동일할 수가 없고 수술로 인한 일시적인 불편감들이 있을 수 있어서 여기에 대한 이해를 충분히 하고 수술을 결정하셔야 합니다.
또, 수술후 몇 개월 동안 야간에 빛퍼짐이라든지 야간에 근거리 시력이 일부 떨어질 수 있다는 것도 충분히 이해를 하실 필요가 있습니다.
                </p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-wrap">
            <div class="testimonial-item">
              <img src="${pageContext.request.contextPath}/resources/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
              <h3>송재철 고객님</h3>
              <h4>백내장</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                처음 백내장 진단을 받고 심란했는데, 원장선생님께서 안심시켜 주시고, 수술도 잘 해주셔서 이제는 잘 보입니다. 감사합니다.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="testimonial-wrap">
            <div class="testimonial-item">
              <img src="${pageContext.request.contextPath}/resources/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
              <h3>서나름 고객님</h3>
              <h4>라식/라섹</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                시력이 너무 나빠서 안경이 무거웠는데, 아침에 일어나서 무거운 안경을 쓰지 않아도 잘 보인다는 게 너무 행복합니다. 감사합니다.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="testimonial-wrap">
            <div class="testimonial-item">
              <img src="${pageContext.request.contextPath}/resources/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
              <h3>이아영 고객님</h3>
              <h4>드림렌즈</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                초등학생 딸이 점점 시력이 나빠져서 고민하던 차에 드림렌즈를 알게 되었어요. 딸 눈에 맞게 드림렌즈를 잘 맞춰주셔서 시력 교정이 잘 되고 있네요. 감사합니다^^
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="testimonial-wrap">
            <div class="testimonial-item">
              <img src="${pageContext.request.contextPath}/resources/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
              <h3>김성일 고객님</h3>
              <h4>녹내장</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                녹내장으로 고생하다가 지인분이 킴스안과를 추천해줘서 수술 잘 받고 건강하게 회복했습니다. 감사합니다.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

          <div class="testimonial-wrap">
            <div class="testimonial-item">
              <img src="${pageContext.request.contextPath}/resources/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
              <h3>이두희 고객님</h3>
              <h4>노안</h4>
              <p>
                <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                나이 들면서 노안이 와서 신문이나 티비를 보는데 어려움이 있었는데 수술 후 너무 잘 보여서 편합니다. 감사합니다.
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>갤러리</h2>
          <p>킴스안과의 사진들을 구경하실 수 있습니다.</p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row no-gutters">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-1.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-2.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-3.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-4.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-5.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-6.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-7.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-8.jpg" class="venobox" data-gall="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>오시는 길</h2>
          <p>킴스안과에 오시는 길을 안내해 드리겠습니다.</p>
        </div>
      </div>

<!--       <div>
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
      </div> -->
      <div id="map" style="width:100%;height:350px;"></div>
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=782f162a7272734e440b80b9cdb6c6c7"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(36.818413, 127.157581), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(36.818413, 127.157581); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">킴스안과 <br><a href="https://map.kakao.com/link/map/Hello World!,36.818413, 127.157581" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,36.818413, 127.157581" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
		
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
		</script>
      <div class="container">
        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="icofont-google-map"></i>
                <h4>Location:</h4>
                <p>충남 천안시 동남구 신부동</p>
              </div>

              <div class="email">
                <i class="icofont-envelope"></i>
                <h4>Email:</h4>
                <p>eyeclinic@example.com</p>
              </div>

              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>Call:</h4>
                <p>(041) 551-1234</p>
              </div>

            </div>

          </div>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright <strong><span>킴스안과</span></strong>. All Rights Reserved
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/venobox/venobox.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/counterup/counterup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>

</html>