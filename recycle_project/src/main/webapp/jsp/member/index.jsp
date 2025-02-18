<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring | 지구를 위한 우리의 동행</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.png" rel="shortcut icon" type="image/x-icon">
</head>
<body style="background-color : #f1f5f1;">

	<jsp:include page="header.jsp"></jsp:include>

	<!-- 캐러셀 -->
	<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
		<!-- 이미지 본문들 -->
		<div class="carousel-inner">
			<!-- 각 이미지 항목 -->
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="/recycle_project/img/main1.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item" data-bs-interval="10000">
				<img src="/recycle_project/img/main2.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item" data-bs-interval="10000">
				<img src="/recycle_project/img/main3.jpg" class="d-block w-100" alt="">
			</div>
			
		</div>
		<!-- 왼쪽 버튼 -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<!-- 오른쪽 버튼 -->
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<!-- <div style= "margin-top:20px;display:flex;justify-content: center; font-size:10px;"> 지역별 챌린지</div> -->
	<div style="margin-top : 20px;display:flex; justify-content: space-evenly;">
	<button class="login-btn btn btn-lg fw-bold" 
    style="background-color: #253f39 !important; color: white; 
           border-radius: 100px; padding: 80px 80px; font-size: 27px;" 
    type="button" onclick="">서울</button>
		
		<button class="login-btn btn btn-lg fw-bold" 
    style="background-color: #253f39 !important; color: white; 
           border-radius: 100px; padding: 80px 80px; font-size: 27px;" 
    type="button" onclick="">인천</button>
    <button class="login-btn btn btn-lg fw-bold" 
    style="background-color: #253f39 !important; color: white; 
           border-radius: 100px; padding: 80px 80px; font-size: 27px;" 
    type="button" onclick="">경기</button>
    <button class="login-btn btn btn-lg fw-bold" 
    style="background-color: #253f39 !important; color: white; 
           border-radius: 100px; padding: 80px 80px; font-size: 27px;" 
    type="button" onclick="">충남</button>
    <button class="login-btn btn btn-lg fw-bold" 
    style="background-color: #253f39 !important; color: white; 
           border-radius: 100px; padding: 80px 80px; font-size: 27px;"  
    type="button" onclick="">부산</button>
	
	
	</div>
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>