console.log('update.js open');

const bno = new URL( location.href ).searchParams.get("bno");

const viewByBno = () => {
	fetch( `/recycle_project/board/view?bno=${ bno }` )
		.then( r => r.json() )
		.then( data => {
			console.log(data);
			document.querySelector('.lnoselect').value = data.lno;
			document.querySelector('.titleinput').value = data.btitle;
			$('#summernote').summernote('editor.insertText', data.bcontent);
			document.querySelector('.peopleinput').value = data.bpeople;
			document.querySelector('.startdateinput').value = data.bstartdate;
			document.querySelector('.enddateinput').value = data.benddate;
			
			lat = data.lat;	lng = data.lng;
		})
		.catch( e => { console.log(e); })
} // f end
viewByBno();

/* 글쓰기 수정 버튼 */
const onUpdate = () => {
	if( !confirm('수정을 완료하시겠습니까?') ){ return; } 
	
	const lnoselect = document.querySelector('.lnoselect')
	const titleinput = document.querySelector('.titleinput')
	const contentinput = document.querySelector('.contentinput')
	const peopleinput = document.querySelector('.peopleinput')
	const startdateinput = document.querySelector('.startdateinput')
	const enddateinput = document.querySelector('.enddateinput')
	
	const lno = lnoselect.value;
	const btitle = titleinput.value;
	const bcontent = contentinput.value;
	const bpeople = peopleinput.value;
	const bstartdate = startdateinput.value;
	const benddate = enddateinput.value;
	
	const obj = { 
		lno : lno,
		btitle : btitle,
		bcontent : bcontent,
		bpeople : bpeople,
		bstartdate : bstartdate,
		benddate : benddate,
		lat : lat,
		lng : lng
	}
 	
	const option  = {
		method : 'PUT',
		headers : { 'Content-Type' : 'application/json' },
		body : JSON.stringify( obj )
	} // o end
	
	fetch( `/recycle_project/board?bno=${ bno }` , option )
		.then( r => r.json())
		.then( data => {
			if( data ){ alert('수정이 완료되었습니다.') }
			else{ alert('수정 실패') }
		}) // then end
		.catch( e => { console.log( e ) })
		
	location.href='board.jsp';
} // f end
