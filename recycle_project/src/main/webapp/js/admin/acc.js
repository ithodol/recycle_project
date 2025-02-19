
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
			//console.log(data);
			document.querySelector('.titlebox').innerHTML = data.btitle;
			document.querySelector('.contentbox').innerHTML = data.bcontent;
			document.querySelector('.mnicknamebox').innerHTML = data.mnickname;
			document.querySelector('.viewbox').innerHTML = data.bview;
			document.querySelector('.datebox').innerHTML = data.bdate.split(' ')[0];
			document.querySelector('.bpeoplebox').innerHTML = data.bpeople;
			document.querySelector('.bstartdatebox').innerHTML = data.bstartdate.split(' ')[0];
			document.querySelector('.benddatebox').innerHTML = data.benddate.split(' ')[0];
			document.querySelector('.baddressbox').innerHTML = data.baddress

			document.querySelector('.pointbox').innerHTML = data.bpoint;
		})
		.catch(e => {console.log(e);})

}
findByBno();


// 게시물 포인트 지급
const putPoint = () => {
	const bno = new URL(location.href).searchParams.get("bno");
	const point = document.querySelector('.pointbox').value;
	//console.log(point);
	
	const option = {
		method : 'PUT',
		Headers : {'Content-Type' : 'application/json'},
		body : JSON.stringify({bpoint : point})
	}
	
	fetch(`/recycle_project/board/acc/view?bno=${bno}`, option)
		.then(r => r.json())
		.then(data => {
			//console.log(data);
			if(data == true){
				alert('포인트 지급 완료');
				
			}else{
				alert('포인트 지급 실패');
			}
		})
		.catch(e => {console.log(e);})
	
}



// bno에 신청한 mno의 정보가져오기 GET
const sharePointGet = () => {
	const bno = new URL(location.href).searchParams.get("bno");
	//console.log(bno);
	
	const option = {
		method : 'GET'
	}
	
	fetch(`/recycle_project/point/share?bno=${bno}`, option)
		.then(r => r.json())
		.then(data => {
			console.log(data);
			data.forEach(info => {
				if(info != null){
					alert('포인트 배포 tjdrhd');
					//sharePointPost(info); // mno에게 포인트 배포
				}else if(info == null){
					alert('해당 챌린지에 신청한 사람이 없습니다.');
				}else{
					alert('포인트 배포 실패');
				}
			})
		})
		.catch(e => {console.log(e);})

}


























