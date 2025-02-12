const getLoginInfo = () =>{
	
	const option ={method:'GET'}
	
	let loginmenu = document.querySelector('.loginname');
	let html ='';
	
	fetch('/recycle_project/admin/info',option)
		.then(r=>r.json())
		.then(data=>{
			if (data == null) {
				location.href="/recycle_project/jsp/admin/login.jsp";
			}
			console.log('로그인상태');
							html += `${data.adname} 님`;
					
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
				location.href = "/recycle_project/jsp/admin/login.jsp";
			}
		})
		.catch(e => { console.log(e); })
} 

