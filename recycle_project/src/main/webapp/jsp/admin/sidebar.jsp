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
					<div class="sb-sidenav-menu-heading">주요 기능</div>
						<a class="nav-link" href="/recycle_project/jsp/admin/index.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 현황
						</a>
				
					<!-- 게시판 메뉴 -->
					<div class="sb-sidenav-menu-heading">게시판</div>
					
					<!-- 회원 드롭박스 -->
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> 회원 관리
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
						<!-- 회원 메뉴 -->
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="dropmenu nav-link" href="/recycle_project/jsp/admin/getmember.jsp">
									회원정보 조회
								</a> 
								<a class="dropmenu nav-link" href="layout-sidenav-light.html">
									로그
								</a>
							</nav>
						</div>
					
					<!-- 게시판 드롭박스 -->
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
						data-bs-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div> 게시판 관리
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
						</div> 공지사항 관리
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
					<a class="nav-link" href="charts.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts
					</a> <a class="nav-link" href="tables.html">
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