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
            <div class="content_title">
       	        <h1>챌린지</h1>
   	            <ol class="breadcrumb mb-4">
	                <li class="breadcrumb-item active">전체 지역</li>
                </ol>
            </div>

			<div class="container">
				<!-- container -->
				<div style="font-size: 20px; width: 100%;" 
				class="container titlebox px-2">
					제목이 들어갈 구역</div>
				<div class="content_subtitle row" >
					<div class="container col-6">
						작성자 : <span class="midbox"> 작성자 구역 </span> 
					</div>
					<div class="container col-6">
						추천수  <span class="likebox mx-2"> 추천수 구역 </span> 
						조회수  <span class="viewbox mx-2"> 조회수 구역 </span> 
						작성일  <span class="datebox mx-2"> 작성일 구역 </span>
					</div>
				</div>
				<br />

				<div class="contentbox p-3">본문이 들어갈 구역</div>
				<br /> <br />
				
				<!-- 수정 삭제 버튼 -->
				<div
					class="d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
					<button onclick="" class="btn btn-primary me-md-2 align-self-end"
						style="background-color: #658a69;" type="button">수정</button>
					<button class="btn btn-primary align-self-end"
						style="background-color: #658a69;" type="button">삭제</button>
				</div>

				<div>
					<textarea class="rcontentinput form-control"></textarea>
					<button onclick="" class="btn btn-primary me-md-2 align-self-end"
						style="background-color: #658a69;" type="button">댓글 쓰기</button>
				</div>

				<div class="replybox mt-5"></div>

			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQuery -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/board/view.js"></script>

</body>
</html>