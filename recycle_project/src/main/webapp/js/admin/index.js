// 승인할 게시물 전체 조회
const findAll = () => {
	const page = new URL(location.href).searchParams.get('page')
	if(page == null){
		page = 1;
	}
	
	const option = {
		method :  'GET'
	}
	
	fetch(`/recycle_project/board/acc?page=${page}`, option)
		.then(r => r.json())
		.then(data =>{
			const boardData = document.querySelector('.boardlist > tbody')
			let html = ``
			let boardList = data.data
			boardList.forEach( (board) => {
				html += `
						<tr>
							<td> ${board.bno} </td>
							<td style="text-align: start;"> ${board.btitle} </td>
							<td> ${board.mnickname} </td>
							<td> ${board.bdate} </td>
							<td> ${board.bpeople} </td>
							<td> ${board.bview} </td>
							<td> ${board.blike} </td>
							<td>
								<button class="btn btn-secondary" style="background-color: #658a69;" type="button" onclick="onDetail(${board.bno})">상세조회</button>
							</td>
						</tr>
						`
			})
			boardData.innerHTML = html;
			getPageBtn(data);
		})
		.catch(e => {console.log(e);})
		
}
findAll();

const onDetail = (bno) => {
	location.href=`/recycle_project/jsp/admin/acc.jsp?bno=${bno}`;
}


const getPageBtn = (data) => {
	
	page = parseInt(data.page)
	
	const pagebtnbox = document.querySelector('.pagebtnbox')
	
	let html = ``
	
	html += `
			<li class="page-item">
				<a class="page-link" href="index.jsp?page=${page <= 1 ? 1 : page-1}">
					이전
				</a>
			</li>
			`
	for(let index = data.startBtn; index <= data.endBtn; index++){
		html += `
				<li class="page-item"> 
					<a class="page-link ${page == index ? 'active': ''}" href="index.jsp?page=${index}">
						${index}
					</a>
				</li>	
				`
	}
	
	html += `
			<li class="page-item">
				<a class="page-link" href="index.jsp?page=${page >= data.totalpage ? page : page +1}">
					다음
				</a>
			</li>
			`
	pagebtnbox.innerHTML = html;
}




















