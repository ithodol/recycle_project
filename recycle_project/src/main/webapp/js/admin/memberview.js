const mno = new URL(location.href).searchParams.get('mno');

const findByMno = ()=>{
	
	const option={method:'GET'}
	fetch(`/recycle_project/admin/view?mno=${mno}`,option)
	.then(r=>r.json())
	.then(data=>{
		if(data != null){
			const getmember = document.querySelector('.getmember');
			let html =`<tr>
			<td class="no"> ${data.mno} </td>
			<td > ${data.mid} </td>
			<td > ${data.mname} </td>
			<td > ${data.mpoint} </td>
			</tr>`;
			getmember.innerHTML = html;
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