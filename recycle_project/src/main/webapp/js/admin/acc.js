
// 승인할 게시물 상세조회
const findByBno = () => {
	const bno = new URL(location.href).searchParams.get("bno");
	
	const option = {
		method : 'GET'
	}
	
	fetch(`/recycle_project/board/acc/view?bno=${bno}`, option)
		.then(r => r.json())
		.then(data => {
			document.querySelector('.titlebox').innerHTML = data.btitle;
			document.querySelector('.contentbox').innerHTML = data.btitle;
			document.querySelector('.mnicknamebox').innerHTML = data.btitle;
			document.querySelector('.viewbox').innerHTML = data.btitle;
			document.querySelector('.datebox').innerHTML = data.btitle;			
		})
		.catch(e => {console.log(e);})

}
findByBno();

