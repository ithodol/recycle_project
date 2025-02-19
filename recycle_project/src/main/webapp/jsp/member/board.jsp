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
		<div class="view_content content">
			<div class="content_title">
				<h1>챌린지</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">
					<select class="form-select" id="validationCustom04" required>
					<option selected disabled onclick="">전체 지역</option>
					<option selected disabled onclick="">서울</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick=""></option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					<option selected disabled onclick="">인천</option>
					
					
				</select>
					
					</li>
					
				</ol>
				
			</div>
			<div class="tablebox container">
				<!-- container -->
				<table class="table boardlist" style="text-align: center;">
					<thead>
						<tr>
							<th style="width: 10%">번호</th>
							<th style="width: 45%">제목</th>
							<th style="width: 10%">작성자</th>
							<th style="width: 15%">작성일</th>
							<th style="width: 10%">모집인원</th>
							<th style="width: 5%">조회수</th>
							<th style="width: 5%">추천수</th>
						</tr>
					</thead>

					<tbody>
					</tbody>
				</table>
			</div>

			<div class="btnbox container">
				<!-- 페이징 버튼 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination pagebtnbox justify-content-center">

					</ul>
				</nav>
			</div>

			<!-- 글쓰기 버튼 -->
			<div
				class=" writebtn d-grid gap-2 d-md-flex justify-content-md-end align-self-start ">


			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQuery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/pagination.js"></script>
	<script src="/recycle_project/js/board/board.js"></script>


</body>
</html>