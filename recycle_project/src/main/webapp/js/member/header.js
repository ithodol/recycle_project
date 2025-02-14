console.log('index.js open');

jQuery(function($){
	$(".gnb>ul>li>a").on("mouseover focus", function(){
    $(this).parent().addClass("active").siblings().removeClass('active');
	});

  $(".gnb li li>a").on("mouseover focus", function(){
    $(this).parent().addClass("active_sub").siblings().removeClass('active_sub');
    });
}); 



const getLoginInfo = () => {
	const option = {
		method : 'GET'
	}
	let loginmenu = document.querySelector('.LogInMenu')
	let html = '';
	
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			console.log(data);
			if(data == null){
				console.log('비로그인');
				html += `
						<li class="login_menu nav-item"><a class="nav-link text-light" href="login.jsp">로그인</a></li>
						<li class="login_menu nav-item"><a class="nav-link text-light" href="signup.jsp">회원가입</a></li>
						`
			}else{
				console.log('로그인');
				html += `
						<li class="nav-item dropdown">
							<a class="login_menu nav-link dropdown-toggle text-light" href="#" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">
								<img class="header_profile" src="/recycle_project/upload/${data.mprofile}" /> 
								 ${data.mnickname} 님
							</a>
							<ul class="dropdown-menu dropdown-menu-lg-end">
								<li><a class="login_drop dropdown-item" href="/recycle_project/jsp/member/info.jsp">마이페이지</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="login_drop dropdown-item" href="#" onclick="onLogOut()">로그아웃</a></li>
							</ul>
						</li>
						`
			}
			loginmenu.innerHTML = html;
		})
		.catch(e => {console.log(e);})
	
		
	
}

getLoginInfo();





const onLogOut = () => {
	const option = {
		method : 'DELETE'
	}
	fetch('/recycle_project/member/login', option)
		.then(r => r.json())
		.then(data => {
			if(data == true){
				alert('로그아웃 되었습니다');
				location.href="/recycle_project/jsp/member/index.jsp";
			}
		})
		.catch(e => {console.log(e);})
}














