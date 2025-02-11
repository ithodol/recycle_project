const getLoginInfo = () =>{
	
	const option ={method:'GET'}
	
	let loginmenu = document.querySelector('.loginmenu');
	let html ='';
	
	fetch('/recycle_project/admin/info',option)
		.then(r=>r.json())
		.then(data=>{
			if (data == null) {
				location.href="/recycle_project/jsp/admin/login.jsp";
			}
			console.log('로그인상태');
							html += `<div class="sb-sidenav-footer mt-2">
							<div class="small">${data.adname} 님</div>
						</div>
					
					<!-- Navbar-->
						<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" id="navbarDropdown" 
								href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="fas fa-user fa-fw"></i>
								</a>
							
								<ul class="dropdown-menu dropdown-menu-end"	aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#!">회원정보</a></li>
									<li><hr class="dropdown-divider" /></li>
									<li><a class="dropdown-item" onclick="onLogOut()" >로그아웃</a></li>
								</ul>
							</li>
						</ul>`;
					
			loginmenu.innerHTML = html;						
		})
		.catch(e=>{console.log(e);})
	
}
getLoginInfo();


const onLogOut = ()=>{
	const option ={method : 'DELETE'}
	fetch('/recycle_project/admin/login',option)
		.then(r=>r.json())
		.then(data=>{
			if(data==true){
				alert('로그아웃합니다.');
				location.href="/recycle_project/jsp/admin/login.jsp";
			}
		})
		.catch(e => { console.log(e); })
} 