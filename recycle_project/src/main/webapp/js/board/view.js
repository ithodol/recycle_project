console.log('view.js open');

// 1-1. 페이지 번호 가져오기
const bno = new URL( location.href ).searchParams.get("bno");

// 1. 상세페이지 조회
const findByBno = () => {
	fetch( `/recycle_project/board/view?bno=${ bno }`)
		.then( r => r.json() )
		.then( data => {
			console.log( data );
			document.querySelector('.titlebox').innerHTML = data.btitle;
			document.querySelector('.midbox').innerHTML = data.mnickname;
			document.querySelector('.likebox').innerHTML = data.blike;
			document.querySelector('.viewbox').innerHTML = data.bview;
			document.querySelector('.datebox').innerHTML = data.bdate;
			document.querySelector('.contentbox').innerHTML = data.bcontent;
			
			lat = data.lat; lng = data.lng;
		}) // then end
		.catch( e => { console.log(e);} )
} // f end
findByBno();