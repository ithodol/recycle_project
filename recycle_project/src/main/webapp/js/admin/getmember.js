const getMember = () =>{
	let page = new URL( location.href ).searchParams.get('page');
	if( page == null){ page = 1; }
	
	const option ={method : 'GET'}
	fetch(`/recycle_project/admin/find?page=${ page }`,option)
		.then(r=>r.json())
		.then(response=>{
			if(response !=null){
				const tbody = document.querySelector('tbody');
				
				let html =``;
				response.data.forEach((member)=>{
					html+=`<tr style="text-align: center; vertical-align: middle; padding: 0px -10px">
								<td> ${member.mno} </td>
								<td> ${member.mid} </td>
								<td> ${member.mname} </td>
								<td> ${member.mpoint} </td>
								<td><button onclick="location.href='/recycle_project/jsp/admin/memberview.jsp?mno=${member.mno}'"
								 class="btn btn-secondary mx-1" style="background-color: #658a69; padding-bottom: 26px; height: 20px;" 
								type="button">수정</button></td>
							</tr>`
				})
				tbody.innerHTML = html;
				/* =================== '이동할 페이지' ================= */
				getPageBtn( response , 'getmember' );
			}
		})
		.catch( e => { console.log(e) } )
}
getMember();

