console.log('login.js open');

const onLogIn = () => {
	const mid = document.querySelector('.midinput').value
	const mpwd = document.querySelector('.mpwdinput').value
	
	const obj = {
		mid : mid,
		mpwd : mpwd
	}
	
	const option = {
		method : 'POST',
		Headers : {'Content-Type' : 'application/json'},
		body : JSON.stringify(obj)
	}
	
	fetch('/recycle_project/member/login', option)
		.then(r => r.json())
		.then(data =>{
			if(data > 0){
				alert('로그인 성공');
				location.href="../../jsp/member/index.jsp";
			}else{
				alert('로그인 실패');
			}
		})
		.catch(e => {console.log(e);})
}