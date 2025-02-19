console.log('update.js open');

const bno = new URL( location.href ).searchParams.get("bno");
let lat;	let lng;
console.log(bno);

const viewByBno = () => {
	fetch( `/recyclt_project/board/view?bno=${ bno }` )
		.then( r => r.json() )
		.then( data => {
			document.querySelector('.lnoselect').value = data.lno;
			document.querySelector('.titleinput').value = data.btitle;
			document.querySelector('.contentinput').value = data.bcontent;
			document.querySelector('.peopleinput').value = data.bpeople;
			document.querySelector('.startdateinput').value = data.bstartdate;
			document.querySelector('.enddateinput').value = benddata;
		})
		.catch( e => { console.log(e); })
} // f end
viewByBno();
