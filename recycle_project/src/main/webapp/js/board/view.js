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
			console.log(lat);
			console.log(lng);
			mapEvent(lat, lng);
			
		}) // then end
		.catch( e => { console.log(e);} )
} // f end
findByBno();



const mapEvent = () => {
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
	
	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'click', function() {
		  searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	          if (status === kakao.maps.services.Status.OK) {
	              var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	              detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	              
	              var content = '<div class="bAddr">' +
	                              '<span class="title">법정동 주소정보</span>' + 
	                              detailAddr + 
	                          '</div>';

	              // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	              infowindow.setContent(content);
	              infowindow.open(map, marker);
	          }   
	      }); 
	});

	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}

	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}

	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');

	        for(var i = 0; i < result.length; i++) {
	            // 행정동의 region_type 값은 'H' 이므로
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }    
	}
	
		
} // f end


