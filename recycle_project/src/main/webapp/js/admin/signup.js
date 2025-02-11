console.log("111");
const onSignUp =( )=>{
	
	const adid = document.querySelector('.adidinput').value;
	const adpwd = document.querySelector('.adpwdinput').value;
	const adname = document.querySelector('.adnameinput').value;
	const adnickname = document.querySelector('.adnicknameinput').value;
	const adphone = document.querySelector('.adphoneinput').value;
	const ademail = document.querySelector('.ademailinput').value;
	
	
	
	const obj ={
		adid:adid,
		adpwd:adpwd,
		adname:adname,
		adnickname:adnickname,
		adphone:adphone,
		ademail:ademail
	}
	const option = {
		method : 'POST',
		headers : {'Content-Type' :'application/json'},
		body : JSON.stringify(obj)
	}
	fetch('/recycle_project/admin/signup',option)
	.then(response => response.json())
	.then(data=>{
		if(data == true){
			alert('회원가입 성공');
			location.href="login.jsp";
		}else{
			alert('회원가입 실패');
		}
	})
	.catch(error =>{console.log(error)})
	
}