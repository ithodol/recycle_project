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
	     	            <ol class="breadcrumb mb-4">
	  	                    <li class="breadcrumb-item active">회원정보 조회</li>
	                    </ol>
	                </div>
	                <div class="container"> <!-- container -->
						<table class="table boardlist">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>모집인원</th>
									<th>조회수</th>
									<th>추천</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td> 1 </td>
									<td> 제목 </td>
									<td> 작성자 </td>
									<td> 작성일 </td>
									<td> 모집인원 </td>
									<td> 조회수 </td>
									<td> 추천수 </td>
								</tr>
							</tbody>
						</table>

						<nav aria-label="Page navigation example">
							<ul class="pagination pagebtnbox justify-content-center">

							</ul>
						</nav>
						
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<!-- 모달 버튼 -->
							<jsp:include page="../modal.jsp"></jsp:include>
							
							<button onclick="location.href='write.jsp'" class="btn btn-secondary me-md-2" 
							style="background-color: #658a69;" type="button">글쓰기
							</button>
							<button class="btn btn-secondary" style="background-color: #658a69;" 
							type="button">버튼
							</button>
						</div>
												
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


</body>
</html>