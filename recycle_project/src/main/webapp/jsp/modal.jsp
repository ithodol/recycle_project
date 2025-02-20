<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary me-md-2 align-self-end" data-bs-toggle="modal"
		data-bs-target="#exampleModal" style="background-color: #658a69;">
		모달 버튼</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">
					모달 제목</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" style="background-color: #658a69;"
						data-bs-dismiss="modal">닫기</button>
					<button onclick="replyUpdate(rno)" type="button" class="btn btn-primary" style="background-color: #658a69;">
						확인</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>