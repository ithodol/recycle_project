<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- 사용자 CSS -->
	<link href="/recycle_project/css/admin/login.css" rel="stylesheet" />
	
</head>
<body>
	<div id="wrap">
		<!-- 회원가입 폼 -->
		<div class="container col-xl-10 col-xxl-8 px-4 ">
			<div class="row align-items-center ">
				<!-- 로그인 구역 -->
				<div class="login-box col-md-10 mx-auto col-lg-5">
					<form class="p-4 p-md-5 border rounded-3 bg-body-tertiary">
						<div class="logo-box">
							<img src="../../img/logo.jpg">
							<div class="logo-name" >Spring</div>
							<div class="login-title">관리자 회원가입</div>
						</div>
						<!-- 아이디 -->
						<div class="form-floating mb-2"> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
							<input type="text" id="adid" class="form-control  adidinput" id="floatingInput" placeholder="아이디">
							<label for="floatingInput">아이디</label>
							
						</div>
						
						<div class="form-floating mb-2">
							<input type="password" id="adpwd" class="form-control adpwdinput" id="floatingPassword" placeholder="비밀번호"> 
							<label for="floatingPassword">비밀번호</label>
						</div>
						
						<div class="form-floating mb-2">
							<input type="text" id="adpwd" class="form-control  adnameinput" id="floatingPassword" placeholder="이름"> 
							<label for="floatingPassword">이름</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="adpwd" class="form-control  adnicknameinput" id="floatingPassword" placeholder="닉네임"> 
							<label for="floatingPassword">닉네임</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="adpwd" class="form-control  adphoneinput" id="floatingPassword" placeholder="연락처"> 
							<label for="floatingPassword">연락처</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="adpwd" class="form-control  ademailinput" id="floatingPassword" placeholder="이메일"> 
							<label for="floatingPassword">이메일</label>
						</div>
						
						<button class="login-btn w-100 btn btn-lg fw-bold" type="button" onclick="onSignUp()">회원가입</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<!-- 사용자 js -->
	<script src="/recycle_project/js/admin/signup.js"></script>
</body>
</html>