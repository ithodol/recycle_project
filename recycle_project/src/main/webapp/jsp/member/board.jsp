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
               <div class="container"> <!-- container -->
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
						<tr><td>1</td></tr>
						<tr><td>2</td></tr>
						<tr><td>3</td></tr>
						<tr><td>4</td></tr>
						<tr><td>5</td></tr>
						<tr><td>6</td></tr>
						<tr><td>7</td></tr>
						<tr><td>8</td></tr>
						<tr><td>9</td></tr>
						<tr><td>10</td></tr>
					</tbody>
				</table>

				<!-- 페이징 버튼 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination pagebtnbox justify-content-center">
						<li>페이징</li>
					</ul>
				</nav>
					
				<!-- 글쓰기 버튼 -->
				<div class="d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
					<!-- 모달 버튼 -->
					<jsp:include page="../modal.jsp"></jsp:include>
					
					<button onclick="location.href='write.jsp'" class="btn btn-primary me-md-2 align-self-end" 
					style="background-color: #658a69;" type="button">글쓰기
					</button>
					<button class="btn btn-primary align-self-end" style="background-color: #658a69;" 
					type="button">버튼
					</button>
				</div>
			</div>   
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQuery -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- js -->
	<script src="/recycle_project/js/pagination.js"></script>
	<script src="/recycle_project/js/board/board.js"></script>

</body>
</html>