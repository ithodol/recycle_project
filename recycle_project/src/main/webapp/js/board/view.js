console.log('view.js open');

// 1-1. 페이지 번호 가져오기
const bno = new URL( location.href ).searchParams.get("bno");

// 1. 상세페이지 조회
const findByBno = () => {
	fetch( `/recycle_project/board/view?bno=${ bno }`)
		.then( r => r.json() )
		.then( data => {
			bstartdate = data.bstartdate.substr(0,10);
			benddate = data.benddate.substr(0,10);
			
			document.querySelector('.titlebox').innerHTML = data.btitle;
			document.querySelector('.midbox').innerHTML = data.mnickname;
			document.querySelector('.likebox').innerHTML = data.blike;
			document.querySelector('.viewbox').innerHTML = data.bview;
			document.querySelector('.datebox').innerHTML = data.bdate;
			document.querySelector('.contentbox').innerHTML = data.bcontent;
			document.querySelector('.startdateinput').innerHTML = bstartdate;
			document.querySelector('.enddateinput').innerHTML = benddate;
			document.querySelector('.peopleinput').innerHTML = data.bpeople;
			
			mapEvent(data.lat, data.lng);
			
		}) // then end
		.catch( e => { console.log(e);} )
} // f end
findByBno();

// 2. kakao api
const mapEvent = (lat, lng) => {
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 1 // 지도의 확대 레벨
    };

    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(lat, lng);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 지도 중심 좌표로 주소 검색
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);

    // 인포윈도우 객체 생성
    var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

    // 마커 클릭 이벤트
    kakao.maps.event.addListener(marker, 'click', function() {
        searchDetailAddrFromCoords(markerPosition, function(result, status) {
            if (status === kakao.maps.services.Status.OK) {
                var detailAddr = result[0].road_address 
                    ? `<div>도로명주소 : ${result[0].road_address.address_name}</div>` 
                    : '';
                detailAddr += `<div>지번 주소 : ${result[0].address.address_name}</div>`;

                var content = `
                    <div class="bAddr">
                        <span class="title">법정동 주소정보</span>
                        ${detailAddr}
						<div class="d-flex justify-content-center">
	                        <button class="px-2" onclick="closeInfoWindow()" 
							style="margin-top:5px; font-weight: 10px; background:#658a69; 
							color:white; border:none; cursor:pointer; ">닫기</button>
						</div>
                    </div>`;

                // 인포윈도우에 클릭한 위치의 주소 정보 표시
                infowindow.setContent(content);
                infowindow.open(map, marker);
            }
        });
    });

    // 닫기 버튼 함수 (전역에서 접근 가능하도록)
    window.closeInfoWindow = function() {
        infowindow.close();
    };

	// 기존 HTML의 "마커 위치로 이동" 버튼 클릭 시 지도 이동
	document.querySelector('.moveBtn').addEventListener('click', function() {
	    map.panTo(markerPosition);
	});

    // 좌표로 행정동 주소 요청
    function searchAddrFromCoords(coords, callback) {
        geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
    }

    // 좌표로 법정동 상세 주소 요청
    function searchDetailAddrFromCoords(coords, callback) {
        geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
    }

    // 지도 좌측 상단에 지도 중심 좌표 주소 표시
    function displayCenterInfo(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var infoDiv = document.getElementById('centerAddr');
            for (var i = 0; i < result.length; i++) {
                if (result[i].region_type === 'H') {
                    infoDiv.innerHTML = result[i].address_name;
                    break;
                }
            }
        }
    }
};

// 3. 인원모집 현황
const findRecruit = () => {
	fetch( `/recycle_project/board/recruit?bno=${ bno }` )
		.then( r => r.json() )
		.then( data => {
			let html = '';
			let count = 0;
			data.forEach( recruit => {
				
				html += `<div class="p-2 bd-highlight"> ${ recruit.mnickname } </div>`;
				
				count++
			}) // for end
			document.querySelector('.recruitbox').innerHTML = html;
			document.querySelector('.peoplecountinput').innerHTML = count;
		}) // then end
		.catch( e => { console.log(e); })
} // f end
findRecruit();

// 4. 챌린지 참여
const recruitWrite = ( mno ) => {
	// 유효성검사
	if( !confirm('챌린지에 참여하시겠습니까?') ){ return; }
	
	const option = {
		method : 'POST',
		headers : { 'Content-Type' : 'text/plain' },
		body : bno
	} // o end
	fetch( `/recycle_project/board/recruit?bno=${ bno }` , option )
		.then( r => r.json() )
		.then( data => {
			if( data ){ alert('챌린지 참여가 완료되었습니다.'); }
			findRecruit();
			recruitBtn();
		}) // then end
		.catch( e => { console.log(e); })
} // f end

// 5. loginMno 가져오기
const getLoginMno = () => {
	return fetch('/recycle_project/member/info')
		.then(r => r.json())
		.then(data => {
			loginMno = data.mno;
			return loginMno;				
		})
		.catch(e => {
			console.log(e);
			return 0;
		})
} // f end

// 5. 본인만 수정 삭제 버튼 출력
const getWriteBtn = ( ) => {
	let btnbox = document.querySelector('.btnbox');
	let html = '';
	
	getLoginMno().then( loginMno => {
		fetch(`/recycle_project/board/view?bno=${ bno }`)
			.then(r => r.json())
			.then(data => {
				console.log(data);
				if( data == null ){
					console.log('비로그인');
				}else if(data.mno != loginMno){
					console.log('회원정보 불일치');
				}else{
					console.log('회원정보 일치');
					html += `<button onclick="onUpdate()" class="btn btn-primary me-md-2 align-self-end"
								style="background-color: #658a69;" type="button">수정</button>
							<button onclick="onDelete()" class="btn btn-primary align-self-end"
								style="background-color: #658a69;" type="button">삭제</button>`;
					btnbox.innerHTML = html;
				} // if end
			}) // then end
			.catch(e => {console.log(e);})
	}) // then end
} // f end
getWriteBtn();

// 7. 챌린지 적용했을 시 버튼 출력
const recruitBtn = ( ) => {
	let recruitbtn = document.querySelector('.recruitbtn');
	let html = '';

	getLoginMno().then( loginMno => {
		fetch(`/recycle_project/board/recruit?bno=${ bno }`)
			.then( r => r.json() )
			.then( data => {
				console.log(data);
				console.log(loginMno);
				for( let i = 0 ; i < data.length ; i++ ){
					if( data[i] == null || loginMno == 0 ){
						console.log('비로그인');
						html = `<button class="btn btn-primary" onclick="location.href='../member/login.jsp'"
									style="background-color: #658a69; width: 300px" type="button">로그인 후 참여가능합니다.</button>`
						break;
					}else if(data[i].mno == loginMno){
						console.log('챌린지 참여 o')
						html = `<button onclick="recruitDelete(${ loginMno })" class="btn btn-primary"
									style="background-color: #658a69; width: 300px" type="button">챌린지 취소</button>`;
						break;
					}else{
						console.log('챌린지 참여 x')
						html = `<button onclick="recruitWrite(${ loginMno })" class="btn btn-primary"
									style="background-color: #658a69; width: 300px" type="button">챌린지 참여</button>`
					}
				} // for end
				recruitbtn.innerHTML = html;
			})
			.catch(e => {console.log(e);})
	}) // then end
} // f end
recruitBtn();




