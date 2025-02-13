<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project Admin - 회원 수정</title>
<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
     <!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
	<link href="../../resources/css/styles.css" rel="stylesheet" />
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- 사용자 CSS -->
	<link href="/recycle_project/css/admin/login.css" rel="stylesheet" />
	<!-- css -->
	<link href="/recycle_project/css/admin/index.css" rel="stylesheet" />
	
	<!-- 폰트 -->
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
	</style>
</head>
<body class="sb-nav-fixed">

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 본문 -->
	<div id="layoutSidenav">
		
		<!-- div 안에 넣어야함 -->
		<jsp:include page="sidebar.jsp"></jsp:include>
	
		<!-- 본문 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="side_content">
	             	<div class="content_title">
	        	        <h1>마이 페이지</h1>
	     	           
	                </div>
	                	<div class="login-box col-md-10 mx-auto col-lg-5">
					<div class="form-floating mb-n2 logo-box">
						<img src="../../img/logo.jpg">
						<div class="logo-name" >Spring</div>
						<div class="login-title">관리자 정보 수정</div>
					</div>
					<form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary">
						<!-- 아이디 -->
						<div class="form-floating mb-2"> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
							<input type="text" id="adid" class="form-control adidinput" id="floatingInput" placeholder="아이디" disabled>
							<label for="floatingInput">아이디</label>
						</div>
						
						<div class="form-floating mb-2">
							<input type="password" id="adpwd" class="form-control adpwdinput" id="floatingPassword" placeholder="비밀번호"> 
							<label for="floatingPassword">변경할 비밀번호</label>
						</div>
						
						<div class="form-floating mb-2">
							<input type="text" id="adname" class="form-control adnameinput" id="floatingPassword" placeholder="이름"> 
							<label for="floatingPassword">이름</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="adnickname" class="form-control adnicknameinput" id="floatingPassword" placeholder="닉네임"> 
							<label for="floatingPassword">닉네임</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="adphone" class="form-control adphoneinput" id="floatingPassword" placeholder="연락처"> 
							<label for="floatingPassword">연락처</label>
						</div>
						<div class="form-floating mb-2">
							<input type="text" id="ademail" class="form-control ademailinput" id="floatingPassword" placeholder="이메일"> 
							<label for="floatingPassword">이메일</label>
						</div>
						
						
						<button class="login-btn w-100 btn btn-lg fw-bold" type="button" onclick="onAdminUpdate()">정보 수정</button>
					</form>
				</div>
	                
	                
	                
				</div>
			</main>

		</div>
	</div>
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="../../resources/js/scripts.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="../../resources/assets/demo/chart-area-demo.js"></script>
	<script src="../../resources/assets/demo/chart-bar-demo.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
	<script src="../../resources/js/datatables-simple-demo.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/admin/login.js"></script>
	<script src="/recycle_project/js/admin/adminupdate.js"></script>
</body>
</html>