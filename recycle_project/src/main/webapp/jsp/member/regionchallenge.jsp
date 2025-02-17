<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 지역별 챌린지</title>
<!-- Title 이미지 -->
<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<button style="display: none;" class="btn btn-primary sidebar"
		type="button" data-bs-toggle="offcanvas"
		data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">

	</button>

	<div class="offcanvas offcanvas-start" tabindex="-1"
		id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="offcanvasExampleLabel">챌린지 상세정보</h5>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<span class=" fw-bold">제목 : </span> <span class="title fw-bold"> </span><br>
			<span >닉네임 : </span> <span class="nickname"> </span><br>
			<span>주소 : </span><span class="address"> </span><br>
			<span>날짜 : </span><span class="benddate"> </span><br>
			<div class=""><button class="login-btn w-100 btn btn-lg fw-bold mb-1 page">게시물 보러가기</button></div>
		</div>
	</div>

	<!-- 본문 -->
	<div id="layoutnav">
		<div class="content">
			<div class="content_title">
				<h1>챌린지</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">지역별 챌린지</li>
				</ol>
			</div>
			<div class="container">
				<!-- container -->
				<div id="map"  style="width: 100%; height: 550px; margin:0px auto;"></div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQUERY 라이브러리 : 카카오지도에 필요한 라이브러리 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<!-- 카카오 지도의 클러스터 기능을 사용하기 위해 앱키 뒤 &libraries=clusterer 추가  -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=acb4b7dda465ce1ebad93655560802d8&libraries=clusterer"></script>
	<!-- js -->

	<script src="/recycle_project/js/member/regionchallenge.js"></script>

</body>
</html>