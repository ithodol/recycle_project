const mno = new URL(location.href).searchParams.get('mno');

const findByMno = ()=>{
	
	const option={method:'GET'}
	fetch(`/recycle_project/admin/view?mno=${mno}`,option)
	.then(r=>r.json())
	.then(data=>{
		if(data != null){
			document.querySelector('.mnoinput').value = data.mno
			document.querySelector('.midinput').value = data.mid
			document.querySelector('.mnameinput').value = data.mname
			document.querySelector('.mphoneinput').value = data.mphone
			document.querySelector('.mpointinput').value = data.mpoint
			
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

const onMemberUpdate = () =>{
	const mname = document.querySelector('.mnameinput').value;
		const mphone =	document.querySelector('.mphoneinput').value ;
	
		
		const obj = {
			mphone:mphone, mname:mname,mno:mno
		 }
		 const option ={
			method : 'PUT',
			headers : {'Content-Type':'application/json'},
			body : JSON.stringify(obj)
		 }
		 fetch('/recycle_project/admin/view',option)
		 	.then(r=>r.json())
			.then(data=>{
				if(data==true){
					alert('회원 정보 수정 완료했습니다.');
					location.href=`/recycle_project/jsp/admin/memberview.jsp?mno=${mno}`
				}else{
					alert('회원 정보 수정 실패했습니다.');
				}
			})
			.catch(e => { console.log(e) })
}