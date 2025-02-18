const onSignUp = () => {
    const adid = document.querySelector('.adidinput').value;
    const adpwd = document.querySelector('.adpwdinput').value;
    const adname = document.querySelector('.adnameinput').value;
    const adnickname = document.querySelector('.adnicknameinput').value;
    const adphone = document.querySelector('.adphoneinput').value;
    const ademail = document.querySelector('.ademailinput').value;

    if (adid==="") {
        alert('ID를 입력해주세요.');
        return;
    }
    if (adpwd==="") {
        alert('PW를 입력해주세요.');
        return;
    }
    if (adname==="") {
        alert('이름을 입력해주세요.');
        return;
    }
    if (adnickname==="") {
        alert('닉네임을 입력해주세요.');
        return;
    }
    if (adphone==="") {
        alert('연락처를 입력해주세요.');
        return;
    }
    if (ademail==="") {
        alert('이메일을 입력해주세요.');
        return;
    }

  	/*
			정규식은 // 로 감싸야 한다.
			[] → 문자 집합을 정의
			^ → 부정(Not) (괄호 안의 문자들을 포함하지 않음)
			\s → 공백 문자 (띄어쓰기, 탭, 줄바꿈 등)
			@ → @ 문자를 제외
			+ → 하나 이상의 문자가 존재해야 함
		 */
  
    if (!/^\d{3}-\d{4}-\d{4}$/.test(adphone)) {
        alert('올바른 형식으로 연락처를 입력해주세요.');
        return;
    }
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(ademail)) {
        alert('올바른 형식으로 이메일을 입력해주세요.');
        return;
    }

    fetch('/recycle_project/admin/signup', { method: 'GET' })
        .then(response => response.json())
        .then(check => {
			console.log(check.adid)
			console.log(check.adphone)
			console.log(check.ademail)
			if (check.adid.includes(adid)) {
			           alert('존재하는 ID입니다.');
			           document.querySelector('.adidinput').value = '';
			           return;
			       }
			       if (check.adphone.includes(adphone)) {
			           alert('존재하는 연락처입니다.');
			           document.querySelector('.adphoneinput').value = '';
			           return;
			       }
			       if (check.ademail.includes(ademail)) {
			           alert('존재하는 이메일입니다.');
			           document.querySelector('.ademailinput').value = '';
			           return;
			       }

            const obj = {
		adid: adid,
		adpwd: adpwd,
		adname: adname,
		adnickname: adnickname,
		adphone: adphone,
		ademail: ademail
	};

            return fetch('/recycle_project/admin/signup', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(obj)
            });
        })
        .then(response => response.json())
        .then(data => {
            if (data === true) {
                alert('회원가입 성공');
                location.href = 'login.jsp';
            } else {
                alert('회원가입 실패');
            }
        })
        .catch(error => {
            console.error('에러 발생:', error);
            alert('회원가입 중 오류가 발생했습니다.');
        });
};
