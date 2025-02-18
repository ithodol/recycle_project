<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 - Recycle Project</title>
	<!-- Title 이미지 -->
	<link href="../../img/title.ico" rel="shortcut icon" type="image/x-icon">
	
	<!-- 썸머노트 하기 위한 css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/summernote-bs5.min.css"  />
	<!-- css -->
	<link rel="stylesheet" href="/recycle_project/css/board/write.css" />
	<link rel="stylesheet" href="/recycle_project/css/board/kakao.css" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- 본문 -->
	<div id="layoutnav">
		<div id="write" class="content">
			<div class="write_content">
	            <div class="content_title">
	   	            <h1>챌린지</h1>
	   	            <ol class="breadcrumb">
		                <li class="breadcrumb-item active">글쓰기</li>
	                </ol>
	            </div>
		
				<div class="container">
					<form>
						<select class="lnoselect form-select my-2">
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
						<!-- 제목 -->
						<input class="titleinput form-control my-2" type="text" placeholder="제목"/>
						<!-- 본문(썸머노트) -->
						<textarea id="summernote" name="editordata" class="contentinput form-control my-2" rows="" cols=""></textarea>
						<!-- 모집설정 -->
						<h5 class="mt-4"> 인원수 / 날짜 </h5>
						<select class="peopleinput form-select my-2" style="width: 25%;">
							<!-- -> 지역번호 -->
							<option value="2"> 2 </option>
							<option value="3"> 3 </option>
							<option value="4"> 4 </option>
							<option value="5"> 5 </option>
							<option value="6"> 6 </option>
							<option value="7"> 7 </option>
							<option value="8"> 8 </option>
							<option value="9"> 9 </option>
							<option value="10"> 10 </option>
						</select>
						<input class="startdateinput form-control my-2" style="width: 25%;" type="datetime-local" placeholder="시작날짜"/>
						<input class="enddateinput form-control my-2" style="width: 25%;" type="datetime-local" placeholder="종료날짜"/>
					</form>
					
					<h5 class="mt-4"> 장소 </h5>
					<div class="map_wrap">
						<div id="map"
							style="width: 95%; height: 100%; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form onsubmit="searchPlaces(); return false;">
										키워드 : <input type="text" value="부평역" id="keyword" size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>

					<!-- 글쓰기 버튼 -->
					<div class="my-4 d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
						<button onclick="onWrite()" class="btn btn-primary me-md-2 align-self-end" 
						style="background-color: #658a69;" type="button">
							작성
						</button>
						<button onclick="onCancle()" class="btn btn-primary align-self-end" 
						style="background-color: #658a69;" type="button">
							취소
						</button>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JQUERY 라이브러리 JS -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 썸머노트 사용하기 위한 JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/summernote-bs5.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.9.1/lang/summernote-ko-KR.min.js" ></script>
	<!-- 카카오 지도의 클러스터 기능을 사용하기 위해 앱키 뒤 &libraries=clusterer 추가 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a6c0c8b3d768424cedeb0bc361e451e4&libraries=services"></script>
	
	<!-- 주의할점 : JS 불러오는 순서 존재하므로 내가 만든 JS를 가장 아래에서 호출 -->
	<script src="/recycle_project/js/board/write.js"></script>
	<script src="/recycle_project/js/board/kakao.js"></script>
</body>
</html>