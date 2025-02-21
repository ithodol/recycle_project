<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project Admin - 게시물 승인/포인트</title>
<!-- Title 이미지 -->
<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

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
						<h1>승인 / 포인트 지급</h1>
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item active"></li>
						</ol>
					</div>
					<div class="container" style="width:1000px;">
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item active">게시물 상세조회</li>
						</ol>
	
						<div style="text-align:end;">
							작성자 : <span class="mnicknamebox"> </span>
							 &nbsp;&nbsp; 조회수 : <span class="viewbox"> </span>
							 &nbsp;&nbsp; 작성일 : <span class="datebox"> </span>
							 <br/>
							 모집인원 : <span class="bpeoplebox"> </span>
							 &nbsp;&nbsp; 장소 : <span class="baddressbox"> </span>
							 &nbsp;&nbsp; 시작일자 : <span class="bstartdatebox"> </span>
							 &nbsp;&nbsp; 종료일자 : <span class="benddatebox"> </span>
						</div>
						<hr/>
						<div style="margin:30px 0px; font-size:30px; font-weight:bold;" class="titlebox">제목 구역</div>
						<div class="contentbox" style="height:280px;">본문 구역</div>
						<hr/>
						<div style="display:flex; margin-top:20px;">
							<input type="text" class="form-control pointbox" id="floatingInput" placeholder="포인트" style="width:160px; margin-right:20px;">
							<button type="button" class="btn" style="background-color:#658a69; color:#ffffff;"onclick="putPoint();"> 지급하기 </button>
							<button type="button" class="btn" style="background-color:#658a69; color:#ffffff; margin-left:10px;"onclick="sharePointGet(); "> 배포하기 </button>
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
	<!-- <script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/assets/demo/chart-area-demo.js"></script>
	<script src="../../resources/assets/demo/chart-bar-demo.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/js/datatables-simple-demo.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/admin/acc.js"></script>


</body>
</html>