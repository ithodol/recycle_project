<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- sidebar -->
	<div id="layoutSidenav_nav">
		<nav class="sidebar sb-sidenav accordion" id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<!-- Dashboard -->
					<div class="sb-sidenav-menu-heading"></div>
						<a class="nav-link" href="/recycle_project/jsp/admin/index.jsp?page=1">
							<div class="sb-nav-link-icon">
								<i class="fas fa-solid fa-house"></i>
							</div>&nbsp;홈
						</a>
				
					<!-- 게시판 메뉴 -->
					<div class="sb-sidenav-menu-heading">회원 관리</div>
					
					<!-- 회원 드롭박스 -->
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" 
						data-bs-target="#collapseLayouts" aria-expanded="false" 
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill mb-1" viewBox="0 0 16 16">
  								<path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1z"/>
							</svg>
						</div>&nbsp;회원
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
						<!-- 회원 메뉴 -->
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="dropmenu nav-link" href="/recycle_project/jsp/admin/getmember.jsp?page=1">
									회원정보 조회
								</a> 
								<!-- <a class="dropmenu nav-link" href="layout-sidenav-light.html">
									로그
								</a> -->
							</nav>
						</div>
					<div class="sb-sidenav-menu-heading">게시판 관리</div>
					<!-- 게시판 드롭박스 -->
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon mb-1">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-text" viewBox="0 0 16 16">
								<path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z"/>
								<path d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5M3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8m0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5"/>
							</svg>
						</div>&nbsp;게시판
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
						<!-- 게시판 관리 -->
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<!-- 게시판 승인 메뉴 -->
								<a class="dropmenu nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#boardApprove" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> 게시물 승인
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
									<div class="collapse" id="boardApprove"
										aria-labelledby="headingOne"
										data-bs-parent="#sidenavAccordionPages">
										<nav class="sb-sidenav-menu-nested nav">
											<a class="dropmenu_inner dropmenu nav-link" href="login.html">승인 목록</a> 
											<a class="dropmenu_inner dropmenu nav-link" href="register.html">재활용 계산</a> 
										</nav>
									</div>
								<!-- 회원 게시판 조회 메뉴  -->
								<a class="dropmenu nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> 회원 게시판 조회
								</a>
							</nav>
						</div>
					
					<!-- 공지사항 드롭박스 -->
					<!-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#announcement" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div>&nbsp;공지사항
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
						<!-- 공지사항 메뉴 -->
						<!-- <div class="collapse" id="announcement"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="dropmenu nav-link" href="layout-static.html">
									공지사항 작성
								</a> 
								<a class="dropmenu nav-link" href="layout-sidenav-light.html">
									공지사항 조회
								</a>
							</nav>
						</div -->
					
					<div class="sb-sidenav-menu-heading">Addons</div>
					<a class="nav-link" href="/recycle_project/jsp/member/index.jsp">
						<div class="sb-nav-link-icon mb-1">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-door-open-fill" viewBox="0 0 16 16">
								<path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15zM11 2h.5a.5.5 0 0 1 .5.5V15h-1zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1"/>
							</svg>
						</div> 사용자 페이지
					</a>
					<!--  <a class="nav-link" href="charts.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts
					</a> 
					<a class="nav-link" href="tables.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div> Tables
					</a>-->
				</div>
			</div>
		</nav>
	</div>
		
	<!-- js -->
	<script src="/recycle_project/js/member/footer.js"></script>
		
</body>
</html>