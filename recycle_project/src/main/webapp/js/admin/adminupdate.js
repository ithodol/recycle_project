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



const onAdminUpdate=()=>{
	const adpwd = document.querySelector('.adpwdinput').value = data.adpwd;
	const adphone =	document.querySelector('.adphoneinput').value = data.adphone;
	const adname = 	document.querySelector('.adnameinput').value = data.adname;
	const adnickname = document.querySelector('.adnicknameinput').value = data.adnickname;
	const ademail = document.querySelector('.ademailinput').value = data.ademail;
	
	const obj = {
		adpwd:adpwd, adphone:adphone, adname:adname,
		 adnickname:adnickname, ademail:ademail
	 }
	 const option ={
		method : 'PUT',
		headers : {'Content-Type':'application/json'},
		body : JSON.stringify(obj)
	 }
	 fetch('/recycle_project/admin/info,',option)
	 	.then(r=>r.json())
		.then(data=>{
			if(data==true){
				alert('정보 수정 완료했습니다.');
				location.href="recycle_project/jsp/admin/admininfo.jsp"
			}else{
				alert('정보 수정 실패했습니다.');
			}
		})
		.catch(e => { console.log(e) })
}