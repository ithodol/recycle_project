
// console.log(bno);
// 승인할 게시물 상세조회
const findByBno = () => {
	const bno = new URL(location.href).searchParams.get("bno");

	const option = {
		method : 'GET'
	}
	
	fetch(`/recycle_project/board/acc/view?bno=${bno}`, option)
		.then(r => r.json())
		.then(data => {
			console.log(data);
			document.querySelector('.titlebox').innerHTML = data.btitle;
			document.querySelector('.contentbox').innerHTML = data.bcontent;
			document.querySelector('.mnicknamebox').innerHTML = data.mnickname;
			document.querySelector('.viewbox').innerHTML = data.bview;
			document.querySelector('.datebox').innerHTML = data.bdate;
			document.querySelector('.bpeoplebox').innerHTML = data.bpeople;
			document.querySelector('.bstartdatebox').innerHTML = data.bstartdate;
			document.querySelector('.benddatebox').innerHTML = data.benddate;
						
		})
		.catch(e => {console.log(e);})

}
findByBno();


// 포인트 지급
