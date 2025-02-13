console.log('signup.js open');

const onSignUp = () => {
	
	const signupform = document.querySelector('#signupform')
	console.log(signupform);
	
	const signupformData = new FormData(signupform);
	
	const option = {
		method : 'POST',
		body : signupformData
	}
	
	fetch('/recycle_project/member/signup', option)
		.then(r => r.json())
		.then(data => {
			console.log(data);
			if(data == true){
				alert('회원가입 성공');
				location.href="/recycle_project/jsp/member/index.jsp";
			}else{
				alert('회원가입 실패');
			}
		})
		.catch(e => {console.log(e);})
}