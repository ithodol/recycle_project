console.log('write.js open');

/* 썸머노트 */
$(document).ready(function() {
  $('#summernote').summernote({
		placeholder : '게시물 내용을 입력해주세요.',
		tabsize : 2,
		height: 500,
		lang : 'ko-KR'
  }); // f end
}); // f end

let lat = 0;	let lng = 0;
console.log(lat + ' ' + lng);
/* 글쓰기 등록 버튼 */
const onWrite = () => {
	if( !confirm('작성을 완료하시겠습니까?') ){ return; } 
	
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
		method : 'POST',
		headers : { 'Content-Type' : 'application/json' },
		body : JSON.stringify( obj )
	} // o end
	
	fetch( '/recycle_project/board' , option )
		.then( r => r.json())
		.then( data => {
			if( data ){ alert('작성이 완료되었습니다.') }
			else{ alert('작성 실패') }
		}) // then end
		.catch( e => { console.log( e ) })
		
	location.href='board.jsp';
} // f end

/* 글쓰기 취소 버튼 */
const onCancle = () => {
	if( confirm('작성을 취소하시겠습니까?') ){ location.href='board.jsp'; } 
} // f end




