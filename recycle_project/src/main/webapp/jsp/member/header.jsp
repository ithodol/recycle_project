<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- 내가 만든 CSS -->
	<link href="/recycle_project/css/member/index.css" rel="stylesheet" />
	<!-- 폰트 -->
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
	</style>
</head>
<body>

	<nav id="header" class="navbar navbar-expand-lg">
		<div class="container-fluid px-5 mx-5">
			<a class="header_name navbar-brand me-5" href="index.jsp"> <!-- 로고 -->
				<img class="header_logo" src="/recycle_project/img/logo.jpg" />
				Spring
			</a>
			<!-- 이미지 안올라갈시 서버 clean 후 metadata 이미지 올라왔는지 확인  -->

			<!-- 반응형 토큰(버튼) -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- 메뉴박스 -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- 왼쪽 메뉴 목록 -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 menu align-center expanded text-center header_menubox">
					<!-- 메뉴항목 -->
					<li class="nav-item"><a class="header_menu nav-link mx-3" href="board.jsp?cno=1">챌린지</a></li>
					<li class="nav-item"><a class="header_menu nav-link mx-3" href="board.jsp?cno=2">소개</a></li>
					<li class="nav-item"><a class="header_menu nav-link mx-3" href="board.jsp?cno=3">공지사항</a></li>
					<li class="nav-item"><a class="header_menu nav-link mx-3" href="board.jsp?cno=4">뉴스</a></li>
					
					<!-- 드롭다운 -->
					<!-- <li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 제품 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else here</a></li>
						</ul>
					</li> -->
				</ul>
				
				<!-- 오른쪽 메뉴 목록 -->
				<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4 LogInMenu">
					<!-- 비로그인시 나타날 리스트 -->
					<li class="login_menu nav-item"><a class="nav-link text-light" href="login.jsp">로그인</a></li>
					<li class="login_menu nav-item"><a class="nav-link text-light" href="signup.jsp">회원가입</a></li>
					<!-- 로그인시 나타날 리스트 -->
					<li class="nav-item dropdown">
						<a class="login_menu nav-link dropdown-toggle text-light" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							<img class="header_profile" src="/recycle_project/upload/default.jpg" /> 
							 로그인된 아이디 
						</a>
						<ul class="dropdown-menu dropdown-menu-lg-end">
							<li><a class="login_drop dropdown-item" href="#">회원정보</a></li>
							<li><a class="login_drop dropdown-item" href="#">포인트 내역</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="login_drop dropdown-item" href="#">로그아웃</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<!-- js -->
	<script src="/recycle_project/js/member/header.js"></script>
	
</body>
</html>