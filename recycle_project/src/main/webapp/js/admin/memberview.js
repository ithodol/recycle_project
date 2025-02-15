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