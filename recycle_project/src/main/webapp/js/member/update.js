// info.js getMyInfo() 실행
const getMyInfo = () => {
	
	const option ={
		method : 'GET'
	}
	
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			if(data != null){
				document.querySelector('.mid').value = data.mid
				document.querySelector('.mpwd').value = data.mpwd
				document.querySelector('.mname').value = data.mname
				document.querySelector('.mnickname').value = data.mnickname
				document.querySelector('.mphone').value = data.mphone
				document.querySelector('.memail').value = data.memail
				document.querySelector('.mprofile').src = `/recycle_project/upload/${data.mprofile}`
			}			
		})
		.catch(e => {console.log(e);})

} // getMyInfo end
getMyInfo();



// 수정하기 버튼 클릭시 
const onUpdate = () =>{
	const mpwd = document.querySelector('.mpwd').value
	const mnickname = document.querySelector('.mnickname').value
	const mphone = document.querySelector('.mphone').value
	const memail = document.querySelector('.memail').value
	
	const obj = {
		mpwd : mpwd,
		mnickname : mnickname,
		mphone : mphone,
		memail : memail
	}
	
	const option = {
		method : 'PUT',
		headers : {'Content-Type' : 'application/json'},
		body : JSON.stringify(obj)
	}
	
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			if(data == true){
				alert('회원정보 수정 성공');
				location.href="/recycle_project/jsp/member/info.jsp";
			}else{
				alert('회원정보 수정 실패');
			}
		})
		.catch(e => {console.log(e);})
	
}