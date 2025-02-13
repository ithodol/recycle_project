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
			
			response.forEach( board => {
				bdate = board.bdate.substr(0,10);
				html += `<tr>
							<td> ${ board.bno } </td>
							<td style="text-align: left;> ${ board.btitle } </td>
							<td> ${ board.mnickname } </td>
							<td> ${ bdate } </td>
							<td> ${ board.bpeople } </td>
							<td> ${ board.bview } </td>
							<td> ${ board.blike } </td>
						</tr>`;
						
			}) // for end
			boardlist.innerHTML = html;
		}) // then end
		.catch( e => { console.log(e); } )
	
} // f end
findAll();

// [2] 페이지 버튼 생성 함수
const getPageBtn = ( response ) => {
	
	page = parseInt( response.page );
	const pagebtnbox = document.querySelector('.pagebtnbox');
	let html = '';
		// 이전 버튼
		html += `<li class="page-item">
					<a class="page-link" href="board.jsp?page=${ page <= 1 ? 1 : page-1 }" aria-label="Previous"> 
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>`;
	for( let i = response.startbtn ; i <= response.endbtn ; i++ ){
		html += `<li class="page-item"><a class="page-link ${ page == i ? 'active' : '' }" href="board.jsp?page=${ i }">${ i }</a></li>`
		
	} // for end
	
				
	
} // f end

