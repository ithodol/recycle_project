<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project Admin - 회원 상세 조회</title>
<!-- Title 이미지 -->
<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Recycle Project Admin - 회원 상세 조회</title>
<!-- 부트스트랩 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="../../resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- css -->
<link href="/recycle_project/css/admin/index.css" rel="stylesheet" />
<link href="/recycle_project/css/admin/memberview.css" rel="stylesheet" />
<link href="/recycle_project/css/admin/login.css" rel="stylesheet" />
<!-- css -->
<link href="/recycle_project/css/admin/index.css" rel="stylesheet" />
<!-- 폰트 -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Arvo&display=swap');
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
						<h1>회원정보 상세조회</h1>
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item active"></li>
						</ol>
					</div>
					<div class="container tableflex">
						<!-- container -->
						<div class="login-box col-md-10 col-lg-5">
							<div class="form-floating mb-n2 logo-box"
								style="justify-content: center !important;">

								<div class="login-title" >회원 상세
									조회</div>
							</div>
							<form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary">
								<div class="form-floating mb-2">
									<input type="text" id="mno"
										class="form-control mnoinput" id="floatingPassword"
										placeholder="회원번호" readonly> 
										<label for="floatingPassword">회원번호</label>
								</div>
								<!-- 아이디 -->
								<div class="form-floating mb-2">
									<!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
									<input type="text" id="adid" class="form-control midinput"
										id="floatingInput" placeholder="아이디" readonly> <label
										for="floatingInput">아이디</label>
								</div>

								<div class="form-floating mb-2">
									<input type="text" id="adname" class="form-control mnameinput"
										id="floatingPassword" placeholder="이름" readonly> <label
										for="floatingPassword">이름</label>
								</div>
							
								<div class="form-floating mb-2">
									<input type="text" id="adphone"
										class="form-control mphoneinput" id="floatingPassword"
										placeholder="연락처" readonly> <label
										for="floatingPassword">연락처</label>
								</div>
								<div class="form-floating mb-2">
									<input type="text" id="ademail"
										class="form-control mpointinput" id="floatingPassword"
										placeholder="포인트" readonly> <label
										for="floatingPassword">포인트</label>
								</div>

								<button class="login-btn w-100 btn btn-lg fw-bold mb-1"
									type="button" onclick="onMemberDelete()">회원 삭제</button>
								<button class="login-btn w-100 btn btn-lg fw-bold" type="button"
									onclick="MemberUpdatePage()">회원 수정</button>
							</form>
						</div>

						<div class="contentLeft" >
							<ol class="breadcrumb mb-4">
								<li class="breadcrumb-item active">포인트 적립 내역</li>
							</ol>

							<table class="table boardlist">
								<thead>
									<tr>
										<th class="no">번호</th>
										<th>포인트</th>
										<th>포인트지급내용</th>
										<th>적립날짜</th>
									</tr>
								</thead>

								<tbody class="memberbypoint">

								</tbody>
							</table>

							<nav aria-label="Page navigation example">
								<ul class="pagination pagebtnbox justify-content-center">

								</ul>
							</nav>

						</div>
					</div>
				</div>
			</main>

		</div>
	</div>

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/assets/demo/chart-area-demo.js"></script>
	<script src="../../resources/assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/js/datatables-simple-demo.js"></script>
	<!-- js -->
		<script src="/recycle_project/js/admin/pagination.js"></script>
	<script src="/recycle_project/js/admin/memberview.js"></script>


</body>
</html>