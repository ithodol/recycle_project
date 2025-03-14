<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 마이페이지</title>

	<!-- 부트스트랩 CSS --> 
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
	<link href="../../resources/css/styles.css" rel="stylesheet" />
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- CSS -->
	<link href="/recycle_project/css/member/login.css" rel="stylesheet" />
	<link href="/recycle_project/css/member/info.css" rel="stylesheet" />
	
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 회원가입 폼 -->
	<div class="container col-xl-16 col-xxl-16 py-5">
		<div class="row">
			<!-- 왼쪽 정보 구역 -->
			<div class="col-md-4 mx-auto col-lg-4">
				<div class="form-floating mb-n2 logo-box">
					<div class="info-title text-light mx-auto">
						<h3>내 정보</h3>
					</div>
				</div>
				<form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary">
					<!-- 프로필 사진 -->
					<div class="form-floating mb-3 mprofilebox">
	                  <img src="" class="mprofile" />
	                </div>
	                
	                <!-- 현재 포인트 -->
	                <div class="mypoint">
	                	
	                </div>
	                
					<!-- 회원정보 -->
					<div class="form-floating mb-3"> <!-- id 속성은 마크업당 1번만 가능 , class 속성은 마크업당 여러개 가능 , 띄어쓰기 구분 -->
						<input readonly type="text" id="mid" class="form-control midinput" id="floatingInput" placeholder="아이디"> 
						<label for="floatingInput">아이디</label>
					</div>
					
					<div class="form-floating mb-3">
						<input readonly type="text" id="mname" class="form-control mnameinput" id="floatingInput" placeholder="이름"> 
						<label for="floatingInput">이름</label>
						
					</div>
					<div class="form-floating mb-3">
						<input readonly type="text" id="mnickname" class="form-control mnicknameinput" id="floatingInput" placeholder="닉네임"> 
						<label for="floatingInput">닉네임</label>
					</div>
					
					<div class="form-floating mb-3">
						<input readonly type="text" id="mphone" class="form-control mphoneinput" id="floatingInput" placeholder="연락처"> 
						<label for="floatingInput">연락처</label>
					</div>
					
					<div class="form-floating mb-3">
						<input readonly type="text" id="memail" class="form-control memailinput" id="floatingInput" placeholder="이메일"> 
						<label for="floatingInput">이메일</label>
					</div>

					
					<button class="bottom-btn w-100 btn btn-lg" type="button" onclick="loUpdate()">정보수정</button>
					<button class="bottom-btn w-100 btn btn-lg" type="button" onclick="onDelete()">회원삭제</button>
				</form>
			</div>
			
			<!-- 오른쪽 포인트 구역 -->
			<!--<div class="col-lg-7 text-center text-lg-start point-table">-->
			<div class="col-md-8 mx-auto col-lg-8">
				<div class="form-floating mb-n2 logo-box">
					<div class="info-title text-light mx-auto">
						<h3>포인트 적립 내역</h3>
					</div>
				</div>
				 <form class="p-4 p-md-5 border rounded-bottom-3 bg-body-tertiary r-h"> 
					<div style="height: 460px;">
						<table class="table" >
							<thead>
								<tr>
									<th scope="col">내용</th>
									<th scope="col">포인트</th>
									<th scope="col">일자</th>
								</tr>
							</thead>
							<tbody class="pointTbody" >
								
							</tbody>
						</table>
	
					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination pagebtnbox justify-content-center my-3">
							
						</ul>
					</nav>
				</form>
			</div>
		</div> 
	</div>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
		
	<!-- 부트스트랩 js -->
	<!-- header.jsp와 중복. 오류 발생 -->
	
	<!-- js -->
	<script src="/recycle_project/js/pagination.js"></script>
	<script src="/recycle_project/js/member/info.js"></script>
	
</body>
</html>