<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 승인 관리</title>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
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
						<h1>승인 관리</h1>
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item active">챌린지 목록</li>
						</ol>
					</div>
					<div class="tablebox container">
						<!-- container -->
						<table class="table boardlist"
							style="text-align: center; margin: 0 auto;width : 90%;">
							<thead>
								<tr style="width : 90%">
									<th style="width: 33%;">종류</th>
									<th style="width: 33%;">무게(g)</th>
									<th style="width: 33%;">총합(₩)</th>


								</tr>
							</thead>

							<tbody>
								<tr >
									<th style="width: 33%; align-content: center;">캔</th>
									<th style="width: 33%;"><input  type="text"
										id="mid" class="form-control cang" id="floatingInput" oninput="calculateCan()"
										placeholder="캔"></th>
									<th style="width: 33;"><input readonly type="text"
										id="mid" class="form-control totalcan" id="floatingInput"
										placeholder="캔 총합"></th>


								</tr>
								<tr >
									<th style="width: 33%; align-content: center;">페트병</th>
									<th style="width: 33%;"><input  type="text"
										id="mid" class="form-control petg" id="floatingInput"  oninput="calculatePet()"
										placeholder="페트병"></th>
									<th style="width: 33;"><input readonly type="text"
										id="mid" class="form-control totalpet" id="floatingInput"
										placeholder="페트병 총합"></th>


								</tr>
								<tr >
									<th style="width: 33%; align-content: center;">유리병</th>
									<th style="width: 33%;"><input type="text"
										id="mid" class="form-control glassg" id="floatingInput" oninput="calculateGlass()"
										placeholder="유리병"></th>
									<th style="width: 33;"><input  type="text"
										id="mid" class="form-control totalglass" readonly id="floatingInput"
										placeholder="유리병 총합"></th>


								</tr>
								<tr >
									<th style="width: 33%; align-content: center;">총합</th>
									<th style="width: 33;"><input readonly type="text"
										id="mid" class="form-control midinput" id="floatingInput"
										placeholder="총합"></th>
									<th style="width: 33%;"><!-- <button class="login-btn w-100 btn btn-m fw-bold" style ="background-color: #658a69 !important;color : white; " type="button" onclick="totalCaculator()">총합 계산</button> --></th>
								


								</tr>
							</tbody>
						</table>

					</div>
					<!-- 페이징 버튼 -->
					<nav aria-label="Page navigation example">
						<ul class="pagination pagebtnbox justify-content-center my-3">

						</ul>
					</nav>
				</div>
			</main>

		</div>
	</div>

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/js/scripts.js"></script>
	<!--  <script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script> 
	<script src="../../resources/assets/demo/chart-area-demo.js"></script>
	<script src="../../resources/assets/demo/chart-bar-demo.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="../../resources/js/datatables-simple-demo.js"></script>
	<!-- js -->
	<!-- <script src="/recycle_project/js/pagination.js"></script>  -->

	<script src="/recycle_project/js/admin/recyclecaculator.js"></script>

</body>
</html>