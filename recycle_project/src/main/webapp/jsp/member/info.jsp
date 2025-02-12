<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 로그인</title>

	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- CSS -->
	<link href="/recycle_project/css/member/login.css" rel="stylesheet" />
	
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 회원가입 폼 -->
	<div class="container col-xl-10 col-xxl-8 px-4 py-5">
		<div class="row align-items-center g-lg-5 py-5">
			<!-- 왼쪽 메세지 구역 -->
			<div class="col-md-10 mx-auto col-lg-5">
				<div class="form-floating mb-n2 logo-box">
					<div class="login-title text-light mx-auto">상세 정보</div>
				</div>
				<form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary">
					<!-- 아이디 -->
					<div class="form-floating mb-3"> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
						<input type="text" id="mid" class="form-control midinput" id="floatingInput" placeholder="계정아이디"> 
						<label for="floatingInput">계정아이디</label>
					</div>
					
					<div class="form-floating mb-3">
						<input type="password" id="mpwd" class="form-control mpwdinput" id="floatingPassword" placeholder="계정비밀번호"> 
						<label for="floatingPassword">계정비밀번호</label>
					</div>
					
					<button class="login-btn w-100 btn btn-lg" type="button" onclick="onLogIn()">로그인</button>
					<hr class="my-4">
					<div class="login-a d-flex justify-content-center">
						<small class="text-body-secondary"> <a class="nav-link" href="signup.jsp"> 회원가입 </a> </small> <div> | </div>
						<small class="text-body-secondary"> <a class="nav-link" href=""> 아이디찾기 </a> </small> <div> | </div>
						<small class="text-body-secondary"> <a class="nav-link" href=""> 비밀번호찾기 </a> </small>
					</div>
				</form>
			</div>
			
			<!-- 오른쪽 메세지 구역 -->
			<div class="col-lg-7 text-center text-lg-start">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">포인트 지급내용</th>
							<th scope="col">수량</th>
							<th scope="col">날짜</th>
						</tr>
					</thead>
					<tbody class="pointTbody">
						
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
		
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<!-- js -->
	<script src="/recycle_project/js/member/login.js"></script>
	
</body>
</html>