drop database if exists recycleproject;
create database recycleproject;
use recycleproject;

# 1. 회원 테이블
create table member(
    mno int unsigned auto_increment , 
    mid varchar(30) not null unique ,
    mpwd varchar(30) not null ,
    mname varchar(20) not null ,
    mnickname varchar(30) not null,
    mphone varchar(13) not null unique ,
    memail varchar(100) not null,
    mdate datetime default now() ,
    mprofile varchar(255) default 'default.jpg',
    constraint primary key( mno )
); 
insert into member ( mid , mpwd , mname ,mnickname, mphone, memail, mprofile ) values
( 'qweqwe' , 'qweqwe' , '유재석' , '닉네임', '010-3333-3333', 'qweqwe@naver.com','default.jpg' ),
( 'gmlaks3703' , 'pp0601' , '박희만' , '김둥', '010-5738-4837', '010-5738-4837','default.jpg' ),
( 'ithodol' , 'aa123123' , '전은서' , '킹호돌', '010-1234-1234', 'ddmdjesz1@gmail.com','default.jpg' ),
( 'bear' , '0305' , '류예나' , '류무무', '010-1111-1111', 'bear0305@naver.com','default.jpg' ),
('kim123', 'password123', '김철수', '철수', '010-1111-1524', 'kim123@example.com', 'default.jpg'),
('lee456', 'mypassword', '이영희', '영희', '010-2862-2552', 'lee456@example.com', 'default.jpg'),
('park789', 'securepass', '박민수', '민수', '010-3663-7444', 'park789@example.com', 'default.jpg'),
('choi000', 'password123', '최지은', '지은', '010-1114-5441', 'choi000@example.com', 'default.jpg'),
('jang321', 'jangpass', '장영수', '영수', '010-5855-5965', 'jang321@example.com', 'default.jpg'),
('kang123', 'kangpass', '강수민', '수민', '010-6622-7854', 'kang123@example.com', 'default.jpg'),
('han456', 'hanpass', '한지혜', '지혜', '010-6277-8511', 'han456@example.com', 'default.jpg'),
('choi789', 'choipass', '최윤석', '윤석', '010-8852-9654', 'choi789@example.com', 'default.jpg'),
('lim000', 'limpass', '임동현', '동현', '010-9999-0000', 'lim000@example.com', 'default.jpg'),
('seo111', 'seopass', '서민지', '민지', '010-1234-5678', 'seo111@example.com', 'default.jpg'),
('kim222', 'kimpw', '김하늘', '하늘', '010-2222-3333', 'kim222@example.com', 'default.jpg'),
('lee333', 'leepw', '이수진', '수진', '010-4444-5555', 'lee333@example.com', 'default.jpg'),
('jung444', 'jungpw', '정민우', '민우', '010-1165-8566', 'jung444@example.com', 'default.jpg'),
('park555', 'parkpw', '박서연', '서연', '010-7777-8888', 'park555@example.com', 'default.jpg'),
('choe666', 'choepw', '조재영', '재영', '010-8888-9999', 'choe666@example.com', 'default.jpg'),
('won777', 'wonpw', '원지윤', '지윤', '010-3333-4444', 'won777@example.com', 'default.jpg'),
('jang888', 'jangpw', '장경수', '경수', '010-5555-6666', 'jang888@example.com', 'default.jpg'),
('baek999', 'baekpw', '백승현', '승현', '010-8444-9555', 'baek999@example.com', 'default.jpg'),
('yoo1000', 'yoopw', '유승호', '승호', '010-2222-3614', 'yoo1000@example.com', 'default.jpg'),
('shin1010', 'shinpw', '신재호', '재호', '010-9551-6544', 'shin1010@example.com', 'default.jpg'),
('kim2020', 'kim2020', '김서진', '서진', '010-4525-6826', 'kim2020@example.com', 'default.jpg'),
('choi3030', 'choi3030', '최미래', '미래', '010-6446-7784', 'choi3030@example.com', 'default.jpg'),
('lee4040', 'lee4040', '이도윤', '도윤', '010-7854-8631', 'lee4040@example.com', 'default.jpg'),
('jang5050', 'jang5050', '장지혜', '지혜', '010-4842-5214', 'jang5050@example.com', 'default.jpg'),
('park6060', 'park6060', '박한솔', '한솔', '010-2956-3655', 'park6060@example.com', 'default.jpg'),
('jung7070', 'jung7070', '정효정', '효정', '010-3654-6842', 'jung7070@example.com', 'default.jpg'),
('choi8080', 'choi8080', '최미진', '미진', '010-2155-6106', 'choi8080@example.com', 'default.jpg'),
('kim9090', 'kim9090', '김한나', '한나', '010-3215-6512', 'kim9090@example.com', 'default.jpg'),
('baek1010', 'baek1010', '백수지', '수지', '010-7855-8868', 'baek1010@example.com', 'default.jpg'),
('won1111', 'won1111', '원상민', '상민', '010-3942-8452', 'won1111@example.com', 'default.jpg'),
('jang1212', 'jang1212', '장예지', '예지', '010-6542-6999', 'jang1212@example.com', 'default.jpg'),
('shin1313', 'shin1313', '신정희', '정희', '010-4682-5541', 'shin1313@example.com', 'default.jpg'),
('kim1414', 'kim1414', '김지은', '지은', '010-2542-3652', 'kim1414@example.com', 'default.jpg'),
('lee1515', 'lee1515', '이주영', '주영', '010-3364-4844', 'lee1515@example.com', 'default.jpg'),
('jung1616', 'jung1616', '정현수', '현수', '010-5598-6656', 'jung1616@example.com', 'default.jpg'),
('choi1717', 'choi1717', '최상윤', '상윤', '010-6116-7187', 'choi1717@example.com', 'default.jpg'),
('park1818', 'park1818', '박성재', '성재', '010-7684-6888', 'park1818@example.com', 'default.jpg'),
('yoo1919', 'yoo1919', '유지현', '지현', '010-4354-9825', 'yoo1919@example.com', 'default.jpg'),
('baek2020', 'baek2020', '백도윤', '도윤', '010-2255-1516', 'baek2020@example.com', 'default.jpg'),
('kim2121', 'kim2121', '김정희', '정희', '010-9663-344', 'kim2121@example.com', 'default.jpg'),
('won2222', 'won2222', '원지수', '지수', '010-5565-8666', 'won2222@example.com', 'default.jpg'),
('shin2323', 'shin2323', '신도희', '도희', '010-4454-5455', 'shin2323@example.com', 'default.jpg'),
('jang2424', 'jang2424', '장상민', '상민', '010-2222-9933', 'jang2424@example.com', 'default.jpg'),
('park2525', 'park2525', '박지원', '지원', '010-3333-1144', 'park2525@example.com', 'default.jpg'),
('choi2626', 'choi2626', '최승현', '승현', '010-4444-5665', 'choi2626@example.com', 'default.jpg'),
('shin2727', 'shin2727', '신우진', '우진', '010-5555-9966', 'shin2727@example.com', 'default.jpg'),
('baek2828', 'baek2828', '백태진', '태진', '010-3333-4334', 'baek2828@example.com', 'default.jpg'),
('yoo2929', 'yoo2929', '유은비', '은비', '010-2222-6663', 'yoo2929@example.com', 'default.jpg'),
('kim3030', 'kim3030', '김다혜', '다혜', '010-4446-5555', 'kim3030@example.com', 'default.jpg'),
('park3131', 'park3131', '박태영', '태영', '010-5555-6656', 'park3131@example.com', 'default.jpg'),
('jang3232', 'jang3232', '장민지', '민지', '010-3393-4444', 'jang3232@example.com', 'default.jpg'),
('choi3333', 'choi3333', '최서우', '서우', '010-4444-5755', 'choi3333@example.com', 'default.jpg'),
('shin3434', 'shin3434', '신미래', '미래', '010-2222-3133', 'shin3434@example.com', 'default.jpg'),
('baek3535', 'baek3535', '백지원', '지원', '010-5555-6566', 'baek3535@example.com', 'default.jpg'),
('kim3636', 'kim3636', '김상현', '상현', '010-4444-5551', 'kim3636@example.com', 'default.jpg');

# 2. 포인트 로그 테이블
create table pointlog(
	pono int unsigned auto_increment,
    pocontent varchar(30) not null,
    pocount int not null,
    podate datetime default now(),
    mno int unsigned,
    constraint primary key( pono ),
    constraint foreign key( mno ) references member( mno ) on update cascade on delete cascade
);

-- 포인트 로그 샘플 5개
insert into pointlog( pocontent, pocount, podate, mno ) values
( '회원가입 축하' , 100 , '2025-02-05 05:00:01' , 1 ),
( '로그인' , 1 , '2025-02-06 05:50:01' , 1 ),
( '회원가입 축하' , 100 , '2025-02-07 17:00:01' , 2 ),
( '포인트 구매' , 2000 , '2025-02-08 17:00:01' , 1 );

#3. 게시판 테이블
create table board(
    bno int unsigned auto_increment,
    lno int default 1,
    btitle varchar(100) not null,
    bcontent longtext not null,
    baddress varchar(100) default 'address',
    lat double default 0,
    lng double default 0,
    bdate datetime default now(),
    bpeople int not null,
    bstartdate datetime,
    benddate datetime,
    bview int default 0, 
    blike int default 0, 
    bpoint int default 0,
    mno int unsigned,
    constraint primary key( bno ) ,
    constraint foreign key ( mno ) references member( mno ) on update cascade on delete cascade     -- [회원]pk가 삭제되면 게시물fk는 null 변경
);

-- 게시판 샘플 5개
insert into board (btitle, bcontent, baddress, lat, lng, bpeople, bstartdate, benddate, bpoint, mno) values 
("함께 줍깅 합시다","부산에서 같이 줍깅할 팀원 구합니다~","부산시 수영구", 35.1460, 129.1130, 5,"2025-02-05","2025-02-06",0,1),
("남한산성 둘레길 1코스","서울을 한눈에 조망할 수 있는 코스로 넉넉하게 90분을 걸으며 쓰레기도 줍고 건강도 챙길 수 있는 코스 입니다.","경기 광주시", 37.4164, 127.2522, 3,"2025-02-06","2025-02-11",0,2),
("고려대 석탑대동제 뒷정리 멤버 구합니다.","고려대학교 민주광장 일대에서 23시에 모이실 분 모집합니다. 좋은 일도 하고 포인트도 벌고 ^^ 모집 신청하시고 리워드 받아가세요~","서울시 성북구", 37.5894, 127.0338, 4,"2025-02-07","2025-02-15",0,3),
("수선화가 아름다운 공곶이","공곶이는 노부부가 정성으로 가꾼 자연정원입니다. 동백꽃이 필 무렵이면 동백터널길이 운치있고, 봄이면 수선화가 예쁘게 피어서 수선화 정원이 됩니다. 앞쪽에는 몽돌해변과 옛날 해안경비초소가 있고 내도가 바라다 보이는 멋진 곳입니다.","경남 거제시", 34.8194, 128.6213, 3,"2025-02-08","2025-02-16",3000,1),
("!!서울 하늘공원 둘레길!!","하늘공원은 평화공원·난지천공원·난지한강공원·노을공원과 함께 월드컵경기장 주변의 5대 공원 중 하나이고, 주변이 상습 투기 지역은 아니지만 “동물을 위한 작은 숲“이 있어 주기적으로 관리가 필요한 지역입니다. 또한 하늘공원은 억새명소로 나들이객들이 많이 찾는 핫플레이스입니다. 같이 쓰레기 줍고~~포인트도 얻고 친분도 쌓읍시다~~~","서울 마포구", 37.5683, 126.8971, 5,"2025-02-06","2025-02-27",2000,4),
('서울 한강에서 환경 보호 챌린지!', '서울 한강에서 쓰레기를 함께 줍고 환경 보호에 동참하는 활동입니다. 참여자 모집!', '서울시 마포구', 37.5375, 126.9745, 5, '2025-02-10', '2025-02-12', 100, 1),
('부산 해운대에서 바다 지키기!', '부산 해운대에서 쓰레기 줍기 활동을 진행합니다. 함께 바다를 지킬 참여자 모집!', '부산시 해운대구', 35.1583, 129.1605, 3, '2025-02-12', '2025-02-13', 200, 2),
('강릉 해변 청소 캠페인', '강릉의 아름다운 해변에서 쓰레기 줍기 활동을 합니다. 자연을 지키는 데 동참하세요!', '강원도 강릉시', 37.7514, 128.8760, 4, '2025-02-15', '2025-02-16', 150, 3),
('서울 남산 환경 미션', '남산에서 함께 환경을 정화하는 활동을 진행합니다. 많은 참여 부탁드립니다.', '서울시 용산구', 37.5512, 126.9916, 6, '2025-02-18', '2025-02-19', 50, 4),
('대구 중구 거리 청소 대작전!', '대구 중구에서 쓰레기 줍기 활동을 진행합니다. 함께 깨끗한 거리 만들기에 동참해주세요.', '대구시 중구', 35.8668, 128.5943, 4, '2025-02-20', '2025-02-22', 300, 5),
('광화문 환경 보호 챌린지', '광화문에서 함께 쓰레기 줍기 활동을 진행합니다. 환경을 지킬 준비 되셨나요?', '서울시 종로구', 37.5665, 126.9780, 5, '2025-02-20', '2025-02-22', 100, 1),
('부산 해운대에서 환경 보호하는 날', '부산 해운대에서 환경 보호 활동을 함께 합니다. 많은 참여 부탁드립니다!', '부산시 해운대구', 35.1583, 129.1605, 4, '2025-02-21', '2025-02-23', 150, 2),
('경기도 하늘공원 환경 보호 데이', '경기도 하늘공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 성남시', 37.4443, 127.1370, 3, '2025-02-22', '2025-02-24', 200, 3),
('제주도 해변 정화 활동', '제주도 해변에서 쓰레기 줍기와 자연 보호 활동을 합니다. 참여해주세요!', '제주도 제주시', 33.4996, 126.5310, 6, '2025-02-23', '2025-02-25', 250, 4),
('인천 송도 환경 보호 워크숍', '인천 송도에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '인천시 송도구', 37.3800, 126.6499, 4, '2025-02-24', '2025-02-26', 300, 5),
('서울 남산에서 쓰레기 줍기!', '서울 남산에서 환경 보호 활동을 진행합니다. 함께 참여해 주세요!', '서울시 용산구', 37.5512, 126.9916, 5, '2025-02-25', '2025-02-27', 100, 6),
('부산 기장군 환경 보호 대모임', '부산 기장군에서 환경 보호 활동을 함께 합니다. 많은 분들의 참여 부탁드립니다!', '부산시 기장군', 35.2355, 129.1557, 4, '2025-02-26', '2025-02-28', 150, 7),
('경남 거제에서 환경 보호 캠페인', '경남 거제에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경남 거제시', 34.8885, 128.6211, 3, '2025-02-27', '2025-03-01', 200, 8),
('서울 양재천 환경 보호 대작전', '서울 양재천에서 쓰레기 줍기 활동과 함께 환경을 지키는 활동을 진행합니다.', '서울시 서초구', 37.4634, 127.0470, 5, '2025-02-28', '2025-03-02', 250, 9),
('강원도 정선에서 환경 보호 활동', '강원도 정선에서 함께 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '강원도 정선군', 37.4603, 128.0744, 4, '2025-03-01', '2025-03-03', 300, 10),

('대전 둔산동 환경 보호 캠페인', '대전 둔산동에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '대전시 서구 둔산동', 36.3504, 127.3845, 5, '2025-03-02', '2025-03-04', 150, 11),
('청주 상당공원 환경 보호', '청주 상당공원에서 함께 쓰레기 줍기 활동을 진행합니다. 자연을 지켜주세요!', '충청북도 청주시 상당구', 36.6330, 127.4898, 4, '2025-03-03', '2025-03-05', 200, 12),
('서울 월드컵공원 환경 보호', '서울 월드컵공원에서 쓰레기 줍기 활동을 진행하며 환경 보호에 동참해주세요.', '서울시 마포구', 37.5665, 126.8999, 5, '2025-03-04', '2025-03-06', 250, 13),
('서울 종로구 환경 보호 캠페인', '서울 종로구에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '서울시 종로구', 37.5721, 126.9792, 3, '2025-03-05', '2025-03-07', 300, 14),
('경기도 의정부 환경 보호 활동', '경기도 의정부에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '경기도 의정부시', 37.7387, 127.0335, 4, '2025-03-06', '2025-03-08', 150, 15),
('충남 아산 환경 보호 챌린지', '충남 아산에서 쓰레기 줍기와 환경 보호 활동을 진행합니다. 동참 부탁드립니다.', '충청남도 아산시', 36.7885, 127.0301, 5, '2025-03-07', '2025-03-09', 200, 16),
('강원도 평창 환경 보호 캠페인', '강원도 평창에서 환경 보호 활동을 진행합니다. 참여해주세요!', '강원도 평창군', 37.4325, 128.3905, 4, '2025-03-08', '2025-03-10', 250, 17),
('울산 남구 환경 보호 활동', '울산 남구에서 함께 쓰레기 줍기 및 환경 보호 활동을 진행합니다.', '울산시 남구', 35.5280, 129.3251, 6, '2025-03-09', '2025-03-11', 300, 18),
('광주 북구 환경 보호 대작전', '광주 북구에서 쓰레기 줍기 활동을 진행합니다. 환경을 지키는 데 함께 해 주세요!', '광주 북구', 35.1780, 126.9097, 5, '2025-03-10', '2025-03-12', 150, 19),
('전주 덕진공원 환경 보호', '전주 덕진공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 많은 참여 바랍니다.', '전라북도 전주시 덕진구', 35.8351, 127.1377, 3, '2025-03-11', '2025-03-13', 200, 20),
('서울 강동구 환경 보호 챌린지', '서울 강동구에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '서울 강동구', 37.5300, 127.1233, 5, '2025-03-12', '2025-03-14', 250, 21),
('대구 동구 환경 보호 캠페인', '대구 동구에서 쓰레기 줍기 활동을 함께 진행합니다. 많은 참여 부탁드립니다.', '대구 동구', 35.8685, 128.6114, 4, '2025-03-13', '2025-03-15', 300, 22),
('서울 강서구 환경 보호 활동', '서울 강서구에서 쓰레기를 줍고 환경 보호 활동에 동참해주세요!', '서울 강서구', 37.5514, 126.8494, 6, '2025-03-14', '2025-03-16', 150, 23),
('전남 순천 환경 보호 대작전', '전남 순천에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '전라남도 순천시', 34.9507, 127.5010, 4, '2025-03-15', '2025-03-17', 200, 24),
('서울 구로구 환경 보호 캠페인', '서울 구로구에서 환경 보호 활동을 진행합니다. 많은 참여 바랍니다!', '서울 구로구', 37.4952, 126.8878, 5, '2025-03-16', '2025-03-18', 250, 25),
('경기도 오산 환경 보호 활동', '경기도 오산에서 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 오산시', 37.1522, 127.0667, 3, '2025-03-17', '2025-03-19', 300, 26),
('부산 수영구 환경 보호 활동', '부산 수영구에서 환경 보호 활동을 진행합니다. 함께 자연을 지켜주세요!', '부산 수영구', 35.1582, 129.1316, 4, '2025-03-18', '2025-03-20', 150, 27),
('충북 청원 환경 보호 활동', '충북 청원에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '충청북도 청원군', 36.6489, 127.4221, 6, '2025-03-19', '2025-03-21', 200, 28),
('서울 강남구 환경 보호 챌린지', '서울 강남구에서 쓰레기 줍기 활동을 진행합니다. 많은 참여 부탁드립니다!', '서울 강남구', 37.5172, 127.0473, 5, '2025-03-20', '2025-03-22', 250, 29),
('경기도 평택 환경 보호 대작전', '경기도 평택에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다!', '경기도 평택시', 36.9984, 127.1132, 3, '2025-03-21', '2025-03-23', 300, 30);


# 4. 모집 테이블
create table recruit(
	reno int unsigned auto_increment,
    mno int unsigned,
    bno int unsigned,
    constraint primary key( reno ),
    constraint foreign key ( mno ) references member( mno ) on update cascade on delete cascade ,
	constraint foreign key ( bno ) references board( bno ) on update cascade on delete cascade
);


-- 모집 테이블 샘플 5개
insert into recruit(mno, bno) values(1, 10);
insert into recruit(mno, bno) values(2, 1);
insert into recruit(mno, bno) values(3, 3);
insert into recruit(mno, bno) values(4, 4);
insert into recruit(mno, bno) values(5, 4);
insert into recruit(mno, bno) values(6, 5);
insert into recruit(mno, bno) values(7, 6);



-- test --
select * from recruit inner join member on recruit.mno = member.mno;
select * from member where mno = 1;
select * from board where bno = 10;
SELECT * FROM recruit r INNER JOIN member m ON r.mno = m.mno WHERE m.mno = 1;
select mno from member;
select * from member m inner join board b on m.mno = b.mno where bno=10;
-- 오류 select board.bpoint, board.bcontent, member.mno from board, member inner join member on board.mno = member.mno inner join recruit recruit on board.bno = recruit.bno where member.mno = 1 and board.bno = 1;
-- select문에서 2개의 테이블 값을 가져오는 방법?
select board.bpoint, board.bcontent from board inner join member on board.mno = member.mno inner join recruit recruit on board.bno = recruit.bno where member.mno = 1 and board.bno = 1;



# 5. 댓글 테이블
create table reply(
	rno int unsigned auto_increment,
    rcontent varchar(200) not null,
    rdate datetime default now(),
    bno int unsigned,
    mno int unsigned,
    constraint primary key( rno ),
    constraint foreign key( bno ) references board( bno ) on update cascade on delete cascade,
    constraint foreign key( mno ) references member( mno ) on update cascade on delete cascade
);

-- 댓글 샘플 5개 삽입
insert into reply( rcontent, rdate , bno , mno ) values
( '멋지 경치도 보고 환경사랑활동도 펼치고 일석이조네요.' , '2025-02-05 12:02:45' , 2 , 1 ),
( '남한산성 둘레길 1코스 근처에는 경기도 의왕시와 안양시, 수원시의 지역이 포함되는데요~
저는 의왕시 카페거리 추천해요^^ 분위기 좋은 카페들이 모여 있어서 커피나 디저트를 즐기기에 좋아요' , '2024-12-11 2:33:12' , 2 , 2 ),
( '고려대학교 학우 분들은 뒷정리가 깔끔하기로 유명합니다. 일찍 끝낼 수 있을 듯 합니다.' , '2025-02-07 4:05:30' , 3 , 3 ),
( '자연정원이라니. 정말 아름 다울 것 같네요. 겸사겸사 수선화보러 가야겠어요.' , '2024-04-17 15:15:20' , 4 , 2 ),
( '여기 저희집 근처인데 산책하다가 강아지가 버려진 음식을 먹고 탈난 적이 있어요. 꼭 참여하겠습니다. 챌린지 자주 올려주세요.' , '2023-11-02 20:58:10' , 5 , 1 );

# 6. 관리자 테이블
create table admin(
	adno int unsigned auto_increment,
    adid varchar(30) not null unique,
    adpwd varchar(30) not null,
    adname varchar(30) not null,
    adphone varchar(13) not null unique,
    ademail varchar(100) not null,
    adnickname varchar(30) not null,
    constraint primary key( adno )
);

-- 관리자 샘플 5개
insert into admin( adid, adpwd, adname, adphone, ademail, adnickname ) values
( 'admin' , '1234' , 'admin' , '010-1111-1111' , 'admin@naver.com' , 'qweqwe' ),
( 'gmlaks3703' , 'pp0601' ,  '박희만' , '010-5738-4837' , 'ppo3703@naver.com' , '김둥' ),
( 'ithodol' , 'aa123123' , '전은서' , '010-1234-1234' , 'ddmdjesz1@gmail.com' , '킹호돌' ),
( 'bear' , '0305' , '류예나' , '010-4352-1108' , 'bear@naver.com' , '류무무' ),
( 'th2024' , 'tj2024b' , '김조은' , '010-4836-5539' , 'tj2024b@gamil.com' , '조아' );


select * from member;
select * from pointlog;
select * from board;
select * from recruit;
select * from reply;
select * from admin;

