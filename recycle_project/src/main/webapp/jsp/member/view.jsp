<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 챌린지</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
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
				<div>
					작성자 : <span class="midbox"> 작성자 구역 </span> 조회수 : <span
						class="viewbox"> 조회수 구역 </span> 작성일 : <span class="datebox">
						작성일 구역 </span>
				</div>
				<br /> <br />

				<div style="text-align: center; font-size: 30px" class="titlebox">
					제목이 들어갈 구역</div>
				<br /> <br />

				<div class="contentbox">본문이 들어갈 구역</div>
				<br /> <br />

				<div>
					<textarea class="rcontentinput form-control"></textarea>
					<!--  form-control : 부트스트랩css -->
					<button onclick="onReplyWrite()" type="button"
						class="btn btn-primary">댓글 게시</button>
				</div>

				<div class="replybox mt-5"></div>

				<!-- 글쓰기 버튼 -->
				<div
					class="d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
					<!-- 모달 버튼 -->

					<button onclick="location.href='write.jsp'"
						class="btn btn-primary me-md-2 align-self-end"
						style="background-color: #658a69;" type="button">글쓰기</button>
					<button class="btn btn-primary align-self-end"
						style="background-color: #658a69;" type="button">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQuery -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/board/board.js"></script>

</body>
</html>