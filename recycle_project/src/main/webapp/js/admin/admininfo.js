console.log('admininfo open');

const getMyAdminInfo = () => {
	const option = {
		method: 'GET'
	}
	fetch('/recycle_project/admin/info', option)
		.then(r => r.json())
		.then(data => {
			if (data != null) {
				document.querySelector('.adidinput').value = data.adid;
				document.querySelector('.adphoneinput').value = data.adphone;
				document.querySelector('.adnameinput').value = data.adname;
				document.querySelector('.adnicknameinput').value = data.adnickname;
				document.querySelector('.ademailinput').value = data.ademail;


			}
		})
		.catch(e => { console.log(e) })
}
getMyAdminInfo();

const onAdminDelete = () =>{
	let result = confirm('정말 탈퇴하실 건가요?');
	if(result==false) return;
	const option = {method : 'DELETE'}
	fetch('/recycle_project/admin/info',option)
		.then(r=>r.json())
		.then(data=>{
			if(data==true){
				alert('탈퇴를 성공하였습니다.');
				location.href="/recycle_project/jsp/admin/login.jsp";
			}
			else{
				alert('탈퇴를 실패하였습니다.');
			}
		})
		.catch(e =>{console.log(e)})
}

const AdminUpdatePage=()=>{
	
	location.href="/recycle_project/jsp/admin/adminupdate.jsp"; 
}