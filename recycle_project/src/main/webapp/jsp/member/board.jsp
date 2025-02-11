<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<!-- 본문 -->
	<div id="layoutnav">
		<div class="content">
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
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
						<tr>
							<td> 1 </td>
							<td> 제목 </td>
							<td> 작성자 </td>
							<td> 작성일 </td>
							<td> 모집인원 </td>
							<td> 조회수 </td>
							<td> 추천수 </td>
						</tr>
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
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#"	aria-label="Next"> 
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
					
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<!-- 모달 버튼 -->
					<jsp:include page="../modal.jsp"></jsp:include>
					
					<button onclick="location.href='write.jsp'" class="btn btn-primary me-md-2" 
					style="background-color: #658a69;" type="button">글쓰기
					</button>
					<button class="btn btn-primary" style="background-color: #658a69;" 
					type="button">버튼
					</button>
				</div>
			</div>   
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>