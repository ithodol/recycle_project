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
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-workspace" viewBox="0 0 16 16">
								<path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
								<path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.4 5.4 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2z"/>
							</svg>
						</div> 회원 관리
							<i class="fas fa-columns"></i>
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
								<a class="dropmenu nav-link" href="layout-sidenav-light.html">
									로그
								</a>
							</nav>
						</div>
					<div class="sb-sidenav-menu-heading">게시판 관리</div>
					<!-- 게시판 드롭박스 -->
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
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
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
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
						<div class="collapse" id="announcement"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="dropmenu nav-link" href="layout-static.html">
									공지사항 작성
								</a> 
								<a class="dropmenu nav-link" href="layout-sidenav-light.html">
									공지사항 조회
								</a>
							</nav>
						</div>
					
					<div class="sb-sidenav-menu-heading">Addons</div>
					<a class="nav-link" href="/recycle_project/jsp/member/index.jsp">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-area"></i>
						</div> 사용자 페이지
					</a>
					<a class="nav-link" href="charts.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts
					</a> 
					<a class="nav-link" href="tables.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div> Tables
					</a>
				</div>
			</div>
		</nav>
	</div>
		
	<!-- js -->
	<script src="/recycle_project/js/member/footer.js"></script>
		
</body>
</html>