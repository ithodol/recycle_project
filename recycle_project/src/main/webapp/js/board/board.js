console.log('board.js open');

// 1. 전체 게시판 조회
const findAll = () => {
	let page = new URL( location.href ).searchParams.get('page');
	if( page == null){ page = 1; }
	
	fetch( `/recycle_project/board?page=${ page }` )
		.then( r => r.json() )
		.then( response => {
			let boardlist = document.querySelector('.boardlist > tbody');
			let html = '';
			
			response.data.forEach( board => {
				bdate = board.bdate.substr(0,10);
				html += `<tr>
							<td> ${ board.bno } </td>
							<td style="text-align: left;">
								<a href="view.jsp?bno=${ board.bno }">
									${ board.btitle } 
								</a> 
							</td>
							<td> ${ board.mnickname } </td>
							<td> ${ bdate } </td>
							<td> ${ board.bpeople } </td>
							<td> ${ board.bview } </td>
							<td> ${ board.blike } </td>
						</tr>`;
						
			}) // for end
			boardlist.innerHTML = html;
			getPageBtn( response, "board" );
		}) // then end
		.catch( e => { console.log(e); } )
	
} // f end
findAll();


const getWriteBtn = () => {
	const option = {
		method : 'GET'
	}
	
	let writebtn = document.querySelector('.writebtn');
	let html = '';

	
	fetch('/recycle_project/member/info', option)
		.then(r => r.json())
		.then(data => {
			console.log(data);
			if(data == null){
				console.log('비로그인');
			
			}else{
				console.log('로그인');
				html += `<button onclick="location.href='write.jsp'" class="btn btn-secondary me-md-2 align-self-end" 
							style="background-color: #658a69;" type="button">글쓰기
						</button>`;
			}
			writebtn.innerHTML = html;
			
			
		})
		.catch(e => {console.log(e);})
	
		
	
}

getWriteBtn();


















