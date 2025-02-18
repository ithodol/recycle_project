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

			mapEvent(data.lat, data.lng);
			
		}) // then end
		.catch( e => { console.log(e);} )
} // f end
findByBno();

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


