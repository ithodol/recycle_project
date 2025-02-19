const onSignUp = () => {
    const adid = document.querySelector('.adidinput').value;
    const adpwd = document.querySelector('.adpwdinput').value;
    const adname = document.querySelector('.adnameinput').value;
    const adnickname = document.querySelector('.adnicknameinput').value;
    const adphone = document.querySelector('.adphoneinput').value;
    const ademail = document.querySelector('.ademailinput').value;

    if (adid === "") {
        alert('ID를 입력해주세요.');
        return;
    }
    if (adpwd === "") {
        alert('PW를 입력해주세요.');
        return;
    }
    if (adname === "") {
        alert('이름을 입력해주세요.');
        return;
    }
    if (adnickname === "") {
        alert('닉네임을 입력해주세요.');
        return;
    }
    if (adphone === "") {
        alert('연락처를 입력해주세요.');
        return;
    }
    if (ademail === "") {
        alert('이메일을 입력해주세요.');
        return;
    }

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
            let isDuplicate = false;  // 중복 여부 확인 변수

            check.forEach(data => {
                if (data.adid === adid) {
                    alert('존재하는 ID입니다.');
                    document.querySelector('.adidinput').value = '';
                    isDuplicate = true;
                }
                if (data.adphone === adphone) {
                    alert('존재하는 연락처입니다.');
                    document.querySelector('.adphoneinput').value = '';
                    isDuplicate = true;
                }
                if (data.ademail === ademail) {
                    alert('존재하는 이메일입니다.');
                    document.querySelector('.ademailinput').value = '';
                    isDuplicate = true;
                }
            });

            // 중복이 있을 경우 회원가입을 진행하지 않음
            if (isDuplicate) {
                return;  // 이후 코드를 실행하지 않도록 함
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
        });
};
