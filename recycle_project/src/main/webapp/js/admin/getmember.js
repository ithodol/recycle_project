const getMember = () =>{
	let page = new URL( location.href ).searchParams.get('page');
		if( page == null){ page = 1; }
		
	const option ={method : 'GET'}
	fetch(`/recycle_project/admin/find?page=${page}`,option)
		.then(r=>r.json())
		.then(data=>{
			if(data !=null){
				const tbody = document.querySelector('tbody');
				
				let html =``;
				data.forEach((member)=>{
					html+=`<tr>
								<td style="padding-left: 10px;"> ${member.mno} </td>
								<td> ${member.mid} </td>
								<td> ${member.mname} </td>
								<td> ${member.mpoint} </td>
								<td><button onclick="location.href='/recycle_project/jsp/admin/memberview.jsp?mno=${member.mno}'"
								 class="btn btn-secondary" style="background-color: #658a69;" 
								type="button">상세조회</button></td>
						</tr>`
				})
				tbody.innerHTML = html;
			}
		})
		.catch( e => { console.log(e) } )
}
getMember();

