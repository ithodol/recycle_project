<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 회원가입</title>
	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- CSS -->
	<link href="/recycle_project/css/member/signup.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		<div id="wrap">
			<!-- 회원가입 폼 -->
			<div class="container col-xl-10 col-xxl-8 px-4 ">
				<div class="row align-items-center ">
	
					<!-- 로그인 구역 -->
					<div class="login-box col-md-10 mx-auto col-lg-5 l-flex">
						<div class="left-txt">
							<h2>사용자 회원가입</h2>
							<br/>
							세상의 모든 자원봉사와 지구를 위한 행동의 콜라보레이션!
							<br/>
							올발론티얼스(All x Volunteer x Earth)
						</div>
						<div class="right-box">
							<div class="top-box">
								<div class="img-box">
									<img src="../../img/member_logo.jpg"/>
								</div>
							</div>
							<form id="signupform" class="p-4 p-md-5 border border-radius bg-body-tertiary">
		
								<!-- 아이디 -->
								<div class="form-floating mb-2"> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
									<input type="text" name="uploadfile" class="form-control  adidinput" id="floatingInput" placeholder="아이디">
									<label for="floatingInput">아이디</label>
								</div>
								
								<div class="form-floating mb-2">
									<input type="password" name="uploadfile" class="form-control adpwdinput" id="floatingPassword" placeholder="비밀번호"> 
									<label for="floatingPassword">비밀번호</label>
								</div>
								
								<div class="form-floating mb-2">
									<input type="text" name="uploadfile" class="form-control  adnameinput" id="floatingPassword" placeholder="이름"> 
									<label for="floatingPassword">이름</label>
								</div>
								<div class="form-floating mb-2">
									<input type="text" name="uploadfile" class="form-control  adnicknameinput" id="floatingPassword" placeholder="닉네임"> 
									<label for="floatingPassword">닉네임</label>
								</div>
								<div class="form-floating mb-2">
									<input type="text" name="uploadfile" class="form-control  adphoneinput" id="floatingPassword" placeholder="연락처"> 
									<label for="floatingPassword">연락처</label>
								</div>
								<div class="form-floating mb-2">
									<input type="text" name="uploadfile" class="form-control  ademailinput" id="floatingPassword" placeholder="이메일"> 
									<label for="floatingPassword">이메일</label>
								</div>
								<div class="form-floating mb-3">
					            	<input type="file" name="uploadfile" class="form-control" id="floatingInput" placeholder="아이디">
					            	<label for="floatingInput">프로필 사진</label>
					          	</div>
								<button class="login-btn w-100 btn btn-lg fw-bold margin" type="button" onclick="onSignUp()">회원가입</button>
							</form>
							<div class="bottom-box">
								계정이 있으신가요? <a href="login.jsp"> 로그인하러 가기</a>
							</div>
						</div>
					</div>
					
	
				</div>
			</div>
		</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<!-- 사용자 js -->
	<script src="/recycle_project/js/member/signup.js"></script>
</body>
</html>