const onLogIn = () =>{
		const adid = document.querySelector('.adidinput').value;
		const adpwd = document.querySelector('.adpwdinput').value;
		
		// 유효성 검사
		if(adid ==null && adpwd == null){
			alert('ID와 PASSWORD를 입력 후 로그인해주세요');
		}
		// fetch 
		// * 보낼 데이터를 객체(JSON) 화 
		const obj ={adid:adid , adpwd : adpwd}
		const option ={
			method : 'POST',
			headers : {'Content-Type' : 'application/json'},
			body : JSON.stringify(obj)
		}
		fetch('/recycle_project/admin/login',option)
			.then(r =>r.json())
			.then( data => {
				if( data > 0 ){ 
					alert('로그인성공');
					location.href="index.jsp"; 
				}else{ alert('로그인실패'); }
			})
			.catch( error => { console.log(error )})
}