<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 챌린지</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
	<!-- css -->
	<link href="/recycle_project/css/board/view.css" rel="stylesheet" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<!-- 본문 -->
	<div id="layoutnav">
		<div class="content">
			<div class="view_content">
	            <div class="content_title">
	       	        <h1>챌린지</h1>
	   	            <ol class="breadcrumb mb-4">
		                <li class="breadcrumb-item active">전체 지역</li>
	                </ol>
	            </div>
	
				<div class="container">
					<!-- container -->
					<div style="font-size: 20px; width: 100%;" 
					class="container titlebox px-2 py-1">
						제목이 들어갈 구역</div>
					<div class="content_subtitle row" >
						<div class="container col-6 py-1">
							<span class="midbox"> 작성자 구역 </span> 
						</div>
						<div class="container col-6 py-1 d-md-flex justify-content-md-end">
							추천수  <span class="likebox ms-2"> 추천수 구역 </span>
							<span class="span_line mx-2"> | </span>
							조회수  <span class="viewbox ms-2"> 조회수 구역 </span>
							<span class="span_line mx-2"> | </span> 
							작성일  <span class="datebox ms-2"> 작성일 구역 </span>
						</div>
					</div>
					<br />
	
					<div class="contentbox px-3">본문이 들어갈 구역</div>
					<br />
					
					<hr/> <br/>
					<div class="row pe-4">
						<div class="col-8 map_wrap d-flex justify-content-center">
						    <div id="map" style="width:95%;height:110%;position:relative;overflow:hidden;"></div>
						    <div class="hAddr" >
						        <span class="title">지도중심기준 행정동 주소정보</span>
						        <span id="centerAddr"></span>
						    </div>
							<button class="moveBtn px-3 py-2">마커 위치로 이동</button>
						</div>
						
						<div class="col-4 recruit_content" >
							<div class="mx-auto my-4 ps-2" style="width: 300px; border-radius: 5px;
							 background-color: #e2e2e2; font-size: 15px;">
								참가인원 | <span class="peoplecountinput mx-2">0</span> /
								<span class="peopleinput mx-2"></span> <br/>
								모집기간 | <span class="startdateinput mx-2" >2025-01-01</span> ~ 
								<span class="enddateinput mx-2" >2025-01-30</span>
							</div>
							
							<div class="recruitbox mt-1 mx-auto d-flex text-center flex-column 
							justify-content-center bd-highlight mb-3">
							
							</div>
							
							<div class="recruitbtn row mb-4 d-flex justify-content-center"> 
								
							</div>
						</div>
					</div>
					<br/>
					<!-- 수정 삭제 버튼 -->
					<div class="btnbox m-2 d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
						
					</div>
					<br/>
					
					<div class="m-2 d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
						<textarea class="rcontentinput form-control"></textarea>
						<button onclick="" class="btn btn-primary align-self-end"
							style="background-color: #658a69; width: 100px; height: 62px;" type="button">댓글 쓰기</button>
					</div>
	
					<div class="replybox mt-5">
					
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQuery -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 카카오 지도의 클러스터 기능을 사용하기 위해 앱키 뒤 &libraries=clusterer 추가 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a6c0c8b3d768424cedeb0bc361e451e4&libraries=services"></script>
	<!-- js -->
	<script src="/recycle_project/js/board/view.js"></script>
</body>
</html>