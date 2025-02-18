

// ============= [4] 마커 클러스터러 사용하기 ==============//
//  https://apis.map.kakao.com/web/sample/basicClusterer/
// + jQuery(JS라이브러리) +&libraries=clusterer

	// (1) 카카오지도 중심좌표( 지도 시작 좌표 ) 와 확대레벨 설정 
   var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
       center : new kakao.maps.LatLng( 37.4164, 127.2522 ), // 지도의 중심좌표 // 활용 : Geolocation API = 접속된 유저의 좌표
       level : 10 // 지도의 확대 레벨 
   });
  const option={method:'GET'}
   
   // (2) 마커 클러스터( 여러개 마커들을 하나의 도형 ) 
   var clusterer = new kakao.maps.MarkerClusterer({
       map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
       averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
       minLevel: 1 // 클러스터 할 최소 지도 레벨 
   });

   	// (3) $(jquery문법)  = http 통신 함수들 , $.get( ) vs fetch() vs axios() vs ajax() 등등 
   	// $.get( '통신할주소' , function(data){ } )
   	// fetch( '통신할주소' , {} ).then().then()
   		// 1. 서블릿주소 2. api주소
   	// $.get( "api주소", function(data) {
	// $.get( "https://api.odcloud.kr/api/15051492/v1/uddi:852bbc11-63ed-493e-ab09-caaaf54fd144?page=1&perPage=35&serviceKey=nwPZ%2F9Z3sVtcxGNXxOZfOXwnivybRXYmyoIDyvU%2BVDssxywHNMU2tA55Xa8zvHWK0bninVkiuZAA4550BDqIbQ%3D%3D", function(data) {
		// $( 리스트 ).map( function( 인덱스,반복변수명 ){ return }
		// 리스트명.forEach( ( 인덱스 , 반복변수명 ) => { })

		// 카카오지도 샘플 : { positions : [ { "lat" : "" , "lng" : "" } , { "lat" : "" , "lng" : "" }  ]  }
		// 공공데이터 : { data : [ { 위도 : "" , 경도 : "" } , { 위도 : "" , 경도 : "" } , { 위도 : "" , 경도 : "" } ] }
	fetch( '/recycle_project/region',option ) 	
		.then( response => response.json() )
		.then( data => { 	console.log( data ); // 통신된 response 값 
			// for vs .forEach( ( 반복변수명 ) => { } )  vs  .map( (반복변수명)=>{ return } )
			let markers = data.map(position => {
			            let marker = new kakao.maps.Marker({
			                position: new kakao.maps.LatLng(position.lat, position.lng)
			           
						});
						console.log(position);
				// 위 변수의 생성된 마커의 클릭 이벤트 등록  
				kakao.maps.event.addListener(marker, 'click', function() {
					  // alert( `${ position.약국명 } 클릭 했군요.` );
						
					  // 클릭한 마커 약국의 정보를 특정한(사이드바) html 에 대입하기.
					  document.querySelector('.title').innerHTML = position.btitle;
					  document.querySelector('.nickname').innerHTML = position.mnickname;
					  document.querySelector('.address').innerHTML = position.baddress;
					  document.querySelector('.benddate').innerHTML = position.benddate.split(' ')[0];
					  
					  document.querySelector('.page').setAttribute("onclick", `onpageLink(${position.bno})`);
					  // 사이드바 버튼를 (JS 클릭이벤트) 강제 클릭 
					  document.querySelector('.sidebar').click();
					  	// .click(); : DOM 객체의 클릭 이벤트 실행 
				});
				
				// 위 변수의 생성된 마커 이벤트 등록후 반환/리턴 
				return marker;  
			}); // map end 
		
			// 클러스터러에 (마커배열)마커들을 추가합니다
			clusterer.addMarkers(markers);	
			
	   }) // then end 
	   .catch( e => { console.log(e) }) // fetch end 	
	   
	   
	   
const onpageLink = (bno) =>{
	location.href=`/recycle_project/jsp/member/view.jsp?bno=${bno}`
}