console.log('info.js test');

// 마이페이지 정보 조회
const getMyInfo = () => {
	const option = {
		method : 'GET'
	}
	 
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			if(data != null){
				document.querySelector('.midinput').value = data.mid
				
				document.querySelector('.mnameinput').value = data.mname
				document.querySelector('.mnicknameinput').value = data.mnickname
				document.querySelector('.mphoneinput').value = data.mphone
				document.querySelector('.memailinput').value = data.memail
				document.querySelector('.mprofile').src = `/recycle_project/upload/${data.mprofile}`
			}			
		})
		.catch(e => {console.log(e);})
		
}
getMyInfo();

// 정보 수정 페이지 이동
const loUpdate = () => {
	location.href = "./update.jsp";
}





// 회원 탈퇴
const onDelete = () => {
	let result = confirm('정말 탈퇴하시겠습니까?')
	if(result == false){
		return;
	}
	
	const option = {
		method : 'DELETE'
	}
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			if(data == true){
				alert('회원 탈퇴 성공');
				location.href="/recycle_project/jsp/member/index.jsp";
			}else{
				alert('회원 탈퇴 실패')
			}
		})
		.catch(e => {console.log(e);})
}



// 내 포인트 내역 조회
const getPointLog = () => {
	const option = {
		method : 'GET'
	}
	fetch('/recycle_project/point', option)
		.then(r => r.json())
		.then(data => {
			if(data != null){
				const tbody = document.querySelector('tbody');
				let html = ``
				data.forEach((point, index) =>{
					//const date = new Date(point.podate);
					//const dateOnly = date.toISOString().split('T')[0];
					//console.log(dateOnly);
					html += `<tr>
                                <th> ${ index+1} </th> 
                                <th> ${ point.pocontent } </th>
                                <th> ${ point.pocount } </th> 
                                <th> ${ point.podate.split(' ')[0] } </th>
                        	</tr>`
				})
				tbody.innerHTML = html;
			}
		})
		.catch(e => {console.log(e);})
}
getPointLog();



// 내 잔여 포인트 조회
const getMyPoint = () => {
	const option = {
		method : 'GET'
	}
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			if(data != null){
				let mypoint = document.querySelector('.mypoint');
				let html = ``
				html += `
						${data.mpoint} 포인트
						`
				console.log(data.mpoint);

				mypoint.innerHTML = html;
			}
			
		})
		.catch(e => {console.log(e);})
}
getMyPoint();



































