'<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	                <p class="text-center">정보 수정을 위해서는 비밀번호 재확인이 필요합니다.</p>
	                <sec:authentication property="principal" var="member"/>
                    <form class="mt-4" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="text-dark" for="pwd">비밀번호</label>
                                    <input class="form-control" id="pwd" type="password" name="userpw" required>
                                </div>
                            </div>
                            <div class="col-lg-12 text-center">
                                <button id="chkPwBtn" class="btn btn-block waves-effect waves-light btn-rounded btn-outline-info mb-3 id_overlap_button">확인</button>
                            </div>
                            <input type="hidden" name="username" value="${member.vo.userid}"> <!-- 확인해봐야함. -->
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
						</div>
					</form>
                </div>
            </div>
       </div>
</div>
      
<script>
	var msg = '${msg}';
	if(msg === '비밀번호를 다시 확인해 주세요.') {
		alert("비밀번호를 다시 확인해 주세요.");
	}
</script>
</section>

</main><!-- End #main -->
<jsp:include page="../../views/includes/footer.jsp"/>
