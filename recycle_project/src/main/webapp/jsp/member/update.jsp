<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 정보수정</title>

	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- CSS -->
	<link href="/recycle_project/css/member/login.css" rel="stylesheet" />
	<link href="/recycle_project/css/member/info.css" rel="stylesheet" />
	
	
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 회원가입 폼 -->
	<div class="container col-xl-10 col-xxl-8 px-4 py-5">
		<div class="row g-lg-5 py-5">
			<!-- 왼쪽 메세지 구역 -->
			<div class="col-md-10 mx-auto col-lg-5">
				<div class="form-floating mb-n2 logo-box">
					<div class="info-title text-light mx-auto">
						<h3>내 정보 수정</h3>
					</div>
				</div>
				<form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary">
					<!-- 프로필 사진 -->
					<div class="form-floating mb-3 mprofilebox">
	                  <img src="" class="mprofile" />
	                </div>
	                
					<!-- 회원정보 -->
					<div class="form-floating mb-3 "> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
						<input readonly disabled type="text" class="form-control midinput mid" id="floatingInput" placeholder="아이디"> 
						<label for="floatingInput">아이디</label>
					</div>
					
					<div class="form-floating mb-3">
						<input type="text" class="form-control mpasswordinput mpwd" id="floatingInput" placeholder="새로운 비밀번호"> 
						<label for="floatingInput">새로운 비밀번호</label>
					</div>
					
					<div class="form-floating mb-3">
						<input readonly disabled type="text" class="form-control mnameinput mname" id="floatingInput" placeholder="이름"> 
						<label for="floatingInput">이름</label>
					</div>
					
					<div class="form-floating mb-3">
						<input type="text" class="form-control mnicknameinput mnickname" id="floatingInput" placeholder="닉네임"> 
						<label for="floatingInput">닉네임</label>
					</div>
					
					<div class="form-floating mb-3">
						<input type="text" class="form-control mphoneinput mphone" id="floatingInput" placeholder="연락처"> 
						<label for="floatingInput">연락처</label>
					</div>
					
					<div class="form-floating mb-3">
						<input type="text" class="form-control memailinput memail" id="floatingInput" placeholder="이메일"> 
						<label for="floatingInput">이메일</label>
					</div>

					
					<button class="bottom-btn w-100 btn btn-lg" type="button" onclick="onUpdate()">수정하기</button>
				</form>
			</div>
			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
		
	<!-- 부트스트랩 js -->
	<!-- header.jsp와 중복. 오류 발생 -->
	
	<!-- js -->
	<script src="/recycle_project/js/member/update.js"></script>
	
</body>
</html>