const mno = new URL(location.href).searchParams.get('mno');
let checkphone = ''

const findByMno = ()=>{
	
	const option={method:'GET'}
	fetch(`/recycle_project/admin/view?mno=${mno}`,option)
	.then(r=>r.json())
	.then(data=>{
		if(data != null){
			document.querySelector('.mnoinput').value = data.mno;
			document.querySelector('.midinput').value = data.mid;
			document.querySelector('.mnameinput').value = data.mname;
			document.querySelector('.mpointinput').value = data.mpoint;
			document.querySelector('.mphoneinput').value = data.mphone.split('-')[0]+"-"+data.mphone.split('-')[1]+"-****";
			checkphone = data.mphone.split('-')[2];
			
			
		}
	})
}
findByMno();

const findByMnoPoint= () =>{
	
	const option ={method : 'GET'}
	fetch(`/recycle_project/admin/point?mno=${mno}`,option)
	.then(r=>r.json())
		.then(point=>{
			if(point != null){
				const memberbypoint =  document.querySelector('.memberbypoint');
				let html=``;
				point.forEach( (point,index)=>{
					html += `<tr>
					     <td class="no"> ${ index+1 } </th> 
					     <td > ${ point.point } </th>
					     <td > ${ point.pocontent } </th> 
					     <td > ${ point.podate } </th>
					    </tr>`
				})
				memberbypoint.innerHTML = html;
			}
		})
		.catch( e => { console.log(e) } )
			
}
findByMnoPoint();

const MemberUpdatePage= () =>{
	const checkMember = prompt('확인을 위해 연락처의 마지막 네 자리 숫자를 입력해주세요');
	if(checkMember==checkphone){
		location.href=`/recycle_project/jsp/admin/memberupdate.jsp?mno=${mno}`; 
	}else{
		return;
	}
	
}

const onMemberDelete = () =>{
	const checkMember = prompt('확인을 위해 연락처의 마지막 네 자리 숫자를 입력해주세요');
		if(checkMember==checkphone){
			let result = confirm('정말 회원정보를 삭제하실 건가요?');
					if(result==false) return;
					const option = {method : 'DELETE'}
					fetch(`/recycle_project/admin/view?mno=${mno}`,option)
						.then(r=>r.json())
						.then(data=>{
							if(data==true){
								alert('삭제를 성공하였습니다.');
								location.href="/recycle_project/jsp/admin/getmember.jsp";
							}
							else{
								alert('삭제를 실패하였습니다.');
							}
						})
						.catch(e =>{console.log(e)})
		}else{
			return;
		}
	
}