<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle Project - 게시물 작성</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
	
	<!-- 썸머노트 하기 위한 css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/summernote-bs5.min.css"  />
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
				<form>
					<select class="cnoselect form-select">
						<!-- -> 지역번호 -->
						<option value="1"> 서울특별시 </option>
						<option value="2"> 인천광역시 </option>
						<option value="3"> 대전광역시 </option>
						<option value="4"> 대구광역시 </option>
						<option value="5"> 울산광역시 </option>
						<option value="6"> 부산광역시 </option>
						<option value="7"> 광주광역시 </option>
						<option value="8"> 경기도 </option>
						<option value="9"> 충청북도 </option>
						<option value="10"> 충청남도 </option>
						<option value="11"> 경상북도 </option>
						<option value="12"> 경상남도 </option>
						<option value="13"> 전라북도 </option>
						<option value="14"> 전라남도 </option>
						<option value="15"> 강원특별자치도 </option>
					</select>
					<input class="titleinput form-control" type="text" />
					<textarea id="summernote" name="editordata" class="contentinput form-control" rows="" cols=""></textarea>
					<button onclick="onWrite()" class="btn btn-primary" type="button"> 글 등록 </button>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQUERY 라이브러리 JS -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 썸머노트 사용하기 위한 JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/summernote-bs5.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/lang/summernote-ko-KR.min.js" ></script>
	<!-- 주의할점 : JS 불러오는 순서 존재하므로 내가 만든 JS를 가장 아래에서 호출 -->
	<script src="/recycle_project/web/js/board/write.js"></script>
</body>
</html>