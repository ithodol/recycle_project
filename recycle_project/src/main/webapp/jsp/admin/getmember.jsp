<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project Admin - 회원 조회</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
	
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Recycle Project Admin - 회원 조회</title>
     <!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
	<link href="../../resources/css/styles.css" rel="stylesheet" />
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
	        	        <h1>회원 관리</h1>
	     	            <ol class="breadcrumb mb-2">
	  	                    <li class="breadcrumb-item active">회원정보 조회</li>
	                    </ol>
	                </div>
	                <div class="tablebox container"> <!-- container -->
						<table class="table boardlist" style="width:90%; margin:0 auto;">
							<thead>
								<tr style="text-align: center;">
									<th style="width: 20%;">회원번호</th>
									<th style="width: 20%;">아이디</th>
									<th style="width: 20%;">이름</th>
									<th style="width: 20%;">포인트</th>
									<th style="width: 20%;">수정</th>
								</tr>
							</thead>

							<tbody>
								
							</tbody>
						</table>
					</div>   
					
					<nav aria-label="Page navigation example">
						<ul class="pagination pagebtnbox justify-content-center my-3">
		
						</ul>
					</nav>
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
	<script src="/recycle_project/js/pagination.js"></script>
	<script src="/recycle_project/js/admin/getmember.js"></script>


</body>
</html>