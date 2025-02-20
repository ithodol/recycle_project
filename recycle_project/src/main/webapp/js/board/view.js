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

// 2. 상세페이지 삭제
const onDelete = () => {
	// 유효성검사
	if( !confirm('정말 삭제하시겠습니까?')){ return; }
	
	const option = { method : 'DELETE' }
	fetch( `/recycle_project/board?bno=${ bno }` , option )
		.then( r => r.json() )
		.then( data => {
			if( data ){ 
				alert('챌린지 삭제가 완료되었습니다.'); 
				location.href='board.jsp';
			}else { alert('챌린지 삭제 실패'); }
		}) // then end
		.catch( e => { console.log(e); })
} // f end

// 1-2. kakao api
const mapEvent = (lat, lng) => {
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
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
							style="margin-top:5px; font-weight: 8px; background:#658a69; 
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
const recruitWrite = ( ) => {
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

// 5. 챌린지 취소
const recruitDelete = ( ) => {
	// 유효성검사
		if( !confirm('챌린지를 취소하시겠습니까?') ){ return; }
		
		const option = {
			method : 'DELETE',
			headers : { 'Content-Type' : 'text/plain' },
			body : bno
		} // o end
		fetch( `/recycle_project/board/recruit?bno=${ bno }` , option )
			.then( r => r.json() )
			.then( data => {
				if( data ){ alert('챌린지 취소가 완료되었습니다.'); }
				findRecruit();
				recruitBtn();
			}) // then end
			.catch( e => { console.log(e); })
} 

// 6. loginMno 가져오기
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

// 7. 본인만 수정 삭제 버튼 출력
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
					html += `<button onclick="location.href='boardupdate.jsp?bno=${ bno }'" class="btn btn-primary me-md-2 align-self-end"
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

// 8. 챌린지 적용했을 시 버튼 출력
const recruitBtn = () => {
    let recruitbtn = document.querySelector('.recruitbtn');
    if (!recruitbtn) {
        console.error("recruitbtn 요소를 찾을 수 없습니다!");
        return;
    }

    let html = '';

    getLoginMno().then(loginMno => {
        console.log("로그인한 회원 번호:", loginMno);

        // 비로그인 상태일 경우 '로그인 후 참여' 버튼 출력
        if (loginMno === 0) {
            console.log("비로그인 상태 - 로그인 버튼 출력");
            recruitbtn.innerHTML = `<button class="btn btn-primary" onclick="location.href='../member/login.jsp'"
                                        style="background-color: #658a69; width: 300px" type="button">
                                        로그인 후 참여 가능합니다.
                                    </button>`;
            return;
        }

        if (typeof bno === "undefined") {
            console.error("bno 값이 정의되지 않았습니다!");
            return;
        }

        fetch(`/recycle_project/board/recruit?bno=${bno}`)
            .then(r => r.json())
            .then(data => {
                console.log("서버 응답 데이터:", data);

                let isParticipant = false; // 챌린지 참여 여부 확인 변수

                for (let i = 0; i < data.length; i++) {
                    if (data[i] && data[i].mno === loginMno) {
                        console.log('챌린지 참여 중');
                        isParticipant = true;
                        break;
                    }
                }

                if (isParticipant) {
                    html = `<button onclick="recruitDelete()" class="btn btn-primary"
                                style="background-color: #658a69; width: 300px" type="button">
                                챌린지 취소
                            </button>`;
                } else {
                    html = `<button onclick="recruitWrite()" class="btn btn-primary"
                                style="background-color: #658a69; width: 300px" type="button">
                                챌린지 참여
                            </button>`;
                }

                console.log("최종 HTML:", html);
                recruitbtn.innerHTML = html;
            })
            .catch(e => console.error("fetch 오류:", e));
    }).catch(e => console.error("getLoginMno 오류:", e));
};
recruitBtn();

// 9. 해당 게시물 댓글 조회
const replyFindAll = () => {
	let page = new URL( location.href ).searchParams.get('page');
	if( page == null){ page = 1; }
	const bno = new URL( location.href ).searchParams.get("bno");
	let html = '';
	getLoginMno().then(loginMno => {
		fetch( `/recycle_project/board/reply?bno=${ bno }&page=${ page }` )
			.then( r => r.json() )
			.then( response => {
				response.data.forEach( reply => {
					html += `<div class="card mt-3">
								<div class="card-header">
					        	    <img src="/tj2024b_web1/upload/${ reply.mprofile }" 
									class="reply_img mb-1" />
	                               	<span class="mnickname" > ${ reply.mnickname } </span>
									<span class="rdate"> ${ reply.rdate } </span>
									<div class="replybtnbox">
										${ loginMno == reply.mno ? `<button class="reply_update_btn" onclick="replyUpdateModal(${ reply.rno, reply.rcontent })" 
																		style="border: none; background-color: white; font-size: 10px;" >수정</button>
																	<button class="reply_delete_btn" onclick="replyDelete(${ reply.rno })" 
																		style="border: none; background-color: white; font-size: 10px;" >삭제</button>` 
										: "" } 
									</div>
	                            </div>
								<div class="card-body ${ loginMno == reply.mno ? 'textarea'+reply.mno : '' }">
									${ reply.rcontent }
								</div>
							</div>`;
				}) // for end
				document.querySelector('.replybox').innerHTML = html;
			}) // then end
			.catch( e => { console.log(e); })
		}).catch(e => console.error("getLoginMno 오류:", e));
		
} // f end
replyFindAll();

// 10. 자신의 댓글 수정 삭제 버튼 출력
const replyChangeBtn = () => {
    let replybtnbox = document.querySelector('.replybtnbox');
    if (!replybtnbox) {
        console.error("recruitbtn 요소를 찾을 수 없습니다!");
        return;
    }

    let html = '';

    getLoginMno().then(loginMno => {
        console.log("로그인한 회원 번호:", loginMno);

        // 비로그인 상태일 경우 '로그인 후 참여' 버튼 출력
        if (loginMno === 0) {
            console.log("비로그인 상태 - 로그인 버튼 출력");
            recruitbtn.innerHTML = `<button class="btn btn-primary" onclick="location.href='../member/login.jsp'"
                                        style="background-color: #658a69; width: 300px" type="button">
                                        로그인 후 참여 가능합니다.
                                    </button>`;
            return;
        }

        if (typeof bno === "undefined") {
            console.error("bno 값이 정의되지 않았습니다!");
            return;
        }

        fetch(`/recycle_project/board/reply?bno=${bno}`)
            .then(r => r.json())
            .then(data => {
                console.log("서버 응답 데이터:", data);

                let isParticipant = false; // 챌린지 참여 여부 확인 변수

                for (let i = 0; i < data.length; i++) {
                    if (data[i] && data[i].mno === loginMno) {
                        console.log('챌린지 참여 중');
                        isParticipant = true;
                        break;
                    }
                }

                if (isParticipant) {
                    html = `<button onclick="recruitDelete()" class="btn btn-primary"
                                style="background-color: #658a69; width: 300px" type="button">
                                챌린지 취소
                            </button>`;
                } else {
                    html = `<button onclick="recruitWrite()" class="btn btn-primary"
                                style="background-color: #658a69; width: 300px" type="button">
                                챌린지 참여
                            </button>`;
                }

                console.log("최종 HTML:", html);
                recruitbtn.innerHTML = html;
            })
            .catch(e => console.error("fetch 오류:", e));
    }).catch(e => console.error("getLoginMno 오류:", e));
};

// 11. 댓글 작성
const replyWrite = () => {
	fetch( `/recycle_project/board/reply?bno=${ bno }` )
		.then( r => r.json() )
		.then( data => {
			
		}) // then end
		.catch( e => { console.log(e); })
		
} // f end

// 12. 댓글 수정
const replyUpdate = ( rno ) => {
	// 유효성 검사
	if( !confirm('댓글을 수정하시겠습니까?')){ return; }
	
	const obj = {
		rno : rno,
		rcontent : rcontent
	}
	
	const option = {
		method : 'UPDATE',
		headers : { 'Content-Type' : 'application/json' },
		body : JSON.stringify( obj )
	}
	
	fetch( `/recycle_project/board/reply?` , option )
			.then( r => r.json() )
			.then( data => {
				if( data ){ 
					alert('댓글 수정이 완료되었습니다.');
					replyFindAll();
				}
				else{ alert('댓글 수정 실패') }
			}) // then end
			.catch( e => { console.log(e); })
} // f end

// 13. 댓글 삭제
const replyDelete = ( rno ) => {
	// 유효성 검사
	if( !confirm('댓글을 삭제하시겠습니까?')){ return; }
	const option = { method : 'DELETE' }
	
	fetch( `/recycle_project/board/reply?rno=${ rno }` , option )
		.then( r => r.json() )
		.then( data => {
			if( data ){ 
				alert('댓글 삭제가 완료되었습니다.');
				replyFindAll();
			}
			else{ alert('댓글 삭제 실패') }
		}) // then end
		.catch( e => { console.log(e); })
} // f end

const replyUpdateModal = ( rno, rcontent ) => {
	
	let update = `.textarea${ rno }`;
	console.log(rcontent)
	html = `<div class="m-2 d-grid gap-2 d-md-flex justify-content-md-end align-self-start">
				<textarea class="updateinput form-control"></textarea>
				<button onclick="replyUpdate(${ rno })" class="btn btn-primary align-self-end"
					style="background-color: #658a69; width: 100px; height: 62px;" type="button">수정</button>
				<button onclick="replyFindAll()" class="btn btn-primary align-self-end"
					style="background-color: #658a69; width: 100px; height: 62px;" type="button">취소</button>
			</div>`
	document.querySelector(`${ update }`).innerHTML = html;

} // f end
