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
    btitle varchar(100) not null ,
    bcontent longtext  not null ,
    baddress varchar(50) not null,
    bdate datetime default now() ,
    bpeople int not null,
    bstartdate datetime,
    benddate datetime,
    bview int default 0 ,
    blike int default 0,
    bpoint int default 0,
    mno int unsigned ,
    constraint primary key( bno ) ,
    constraint foreign key ( mno ) references member( mno ) on update cascade on delete cascade     -- [회원]pk가 삭제되면 게시물fk는 null 변경
);

-- 게시판 샘플 5개
insert into board (btitle,bcontent,baddress,bpeople,bstartdate,benddate,bpoint,mno) values 
("함께 줍깅 합시다","부산에서 같이 줍깅할 팀원 구합니다~","부산시 수영구",5,"2025-02-05","2025-02-06",0,1),
("남한산성 둘레길 1코스","서울을 한눈에 조망할 수 있는 코스로 넉넉하게 90분을 걸으며 쓰레기도 줍고 건강도 챙길 수 있는 코스 입니다.","경기 광주시",3,"2025-02-06","2025-02-11",0,2),
("고려대 석탑대동제 뒷정리 멤버 구합니다.","고려대학교 민주광장 일대에서 23시에 모이실 분 모집합니다.좋은 일도 하고 포인트도 벌고 ^^ 모집 신청하시고 리워드 받아가세요~","서울시 성북구",4,"2025-02-07","2025-02-15",0,3),
("수선화가 아름다운 공곶이"," 공곶이는 노부부가 정성으로 가꾼 자연정원입니다.동백꽃이 필 무렵이면 동백터널길이 운치있고,  봄이면 수선화가 예쁘게 피어서 수선화 정원이 됩니다앞쪽에는 몽돌해변과 옛날 해안경비초소가 있고 내도가 바라다 보이는 멋진 곳입니다.","경남 거제시", 3,"2025-02-08","2025-02-16",3000,1),
("!!서울 하늘공원 둘레길!!","하늘공원은 평화공원·난지천공원·난지한강공원·노을공원과 함께 월드컵경기장 주변의 5대 공원 중 하나이고, 주변이 상습 투기 지역은 아니지만 “동물을 위한 작은 숲“이 있어 주기적으로 관리가 필요한 지역입니다. 또한 하늘공원은 억새명소로 나들이객들이 많이 찾는 핫플레이스입니다. 같이 쓰레기 줍고~~포인트도 얻고 친분도 쌓읍시다~~~","서울 마포구",5,"2025-02-06","2025-02-27",2000,4),
('서울 한강에서 환경 보호 챌린지!', '서울 한강에서 쓰레기를 함께 줍고 환경 보호에 동참하는 활동입니다. 참여자 모집!', '서울시 마포구', 5, '2025-02-10', '2025-02-12', 100, 1),
('부산 해운대에서 바다 지키기!', '부산 해운대에서 쓰레기 줍기 활동을 진행합니다. 함께 바다를 지킬 참여자 모집!', '부산시 해운대구', 3, '2025-02-12', '2025-02-13', 200, 2),
('강릉 해변 청소 캠페인', '강릉의 아름다운 해변에서 쓰레기 줍기 활동을 합니다. 자연을 지키는 데 동참하세요!', '강원도 강릉시', 4, '2025-02-15', '2025-02-16', 150, 3),
('서울 남산 환경 미션', '남산에서 함께 환경을 정화하는 활동을 진행합니다. 많은 참여 부탁드립니다.', '서울시 용산구', 6, '2025-02-18', '2025-02-19', 50, 4),
('대구 중구 거리 청소 대작전!', '대구 중구에서 쓰레기 줍기 활동을 진행합니다. 함께 깨끗한 거리 만들기에 동참해주세요.', '대구시 중구', 4, '2025-02-20', '2025-02-22', 300, 5),
('광화문 환경 보호 챌린지', '광화문에서 함께 쓰레기 줍기 활동을 진행합니다. 환경을 지킬 준비 되셨나요?', '서울시 종로구', 5, '2025-02-20', '2025-02-22', 100, 1),
('부산 해운대에서 환경 보호하는 날', '부산 해운대에서 환경 보호 활동을 함께 합니다. 많은 참여 부탁드립니다!', '부산시 해운대구', 4, '2025-02-21', '2025-02-23', 150, 2),
('경기도 하늘공원 환경 보호 데이', '경기도 하늘공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 성남시', 3, '2025-02-22', '2025-02-24', 200, 3),
('제주도 해변 정화 활동', '제주도 해변에서 쓰레기 줍기와 자연 보호 활동을 합니다. 참여해주세요!', '제주도 제주시', 6, '2025-02-23', '2025-02-25', 250, 4),
('인천 송도 환경 보호 워크숍', '인천 송도에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '인천시 송도구', 4, '2025-02-24', '2025-02-26', 300, 5),
('서울 남산에서 쓰레기 줍기!', '서울 남산에서 환경 보호 활동을 진행합니다. 함께 참여해 주세요!', '서울시 용산구', 5, '2025-02-25', '2025-02-27', 100, 6),
('부산 기장군 환경 보호 대모임', '부산 기장군에서 환경 보호 활동을 함께 합니다. 많은 분들의 참여 부탁드립니다!', '부산시 기장군', 4, '2025-02-26', '2025-02-28', 150, 7),
('경남 거제에서 환경 보호 캠페인', '경남 거제에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경남 거제시', 3, '2025-02-27', '2025-03-01', 200, 8),
('서울 양재천 환경 보호 대작전', '서울 양재천에서 쓰레기 줍기 활동과 함께 환경을 지키는 활동을 진행합니다.', '서울시 서초구', 5, '2025-02-28', '2025-03-02', 250, 9),
('강원도 정선에서 환경 보호 활동', '강원도 정선에서 함께 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '강원도 정선군', 4, '2025-03-01', '2025-03-03', 300, 10),
('대전 둔산동 환경 보호 캠페인', '대전 둔산동에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '대전시 서구 둔산동', 5, '2025-03-02', '2025-03-04', 150, 11),
('청주 상당공원 환경 보호', '청주 상당공원에서 함께 쓰레기 줍기 활동을 진행합니다. 자연을 지켜주세요!', '충청북도 청주시 상당구', 4, '2025-03-03', '2025-03-05', 200, 12),
('서울 월드컵공원 환경 보호', '서울 월드컵공원에서 쓰레기 줍기 활동을 진행하며 환경 보호에 동참해주세요.', '서울시 마포구', 5, '2025-03-04', '2025-03-06', 250, 13),
('서울 종로구 환경 보호 캠페인', '서울 종로구에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '서울시 종로구', 3, '2025-03-05', '2025-03-07', 300, 14),
('경기도 의정부 환경 보호 활동', '경기도 의정부에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '경기도 의정부시', 4, '2025-03-06', '2025-03-08', 150, 15),
('충남 아산 환경 보호 챌린지', '충남 아산에서 쓰레기 줍기와 환경 보호 활동을 진행합니다. 동참 부탁드립니다.', '충청남도 아산시', 5, '2025-03-07', '2025-03-09', 200, 16),
('강원도 평창 환경 보호 캠페인', '강원도 평창에서 환경 보호 활동을 진행합니다. 참여해주세요!', '강원도 평창군', 4, '2025-03-08', '2025-03-10', 250, 17),
('울산 남구 환경 보호 활동', '울산 남구에서 함께 쓰레기 줍기 및 환경 보호 활동을 진행합니다.', '울산시 남구', 6, '2025-03-09', '2025-03-11', 300, 18),
('광주 북구 환경 보호 대작전', '광주 북구에서 쓰레기 줍기 활동을 진행합니다. 환경을 지키는 데 함께 해 주세요!', '광주 북구', 5, '2025-03-10', '2025-03-12', 150, 19),
('전주 덕진공원 환경 보호', '전주 덕진공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 많은 참여 바랍니다.', '전라북도 전주시 덕진구', 3, '2025-03-11', '2025-03-13', 200, 20),
('서울 강동구 환경 보호 챌린지', '서울 강동구에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '서울 강동구', 5, '2025-03-12', '2025-03-14', 250, 21),
('대구 동구 환경 보호 캠페인', '대구 동구에서 쓰레기 줍기 활동을 함께 진행합니다. 많은 참여 부탁드립니다.', '대구 동구', 4, '2025-03-13', '2025-03-15', 300, 22),
('서울 강서구 환경 보호 활동', '서울 강서구에서 쓰레기를 줍고 환경 보호 활동에 동참해주세요!', '서울 강서구', 6, '2025-03-14', '2025-03-16', 150, 23),
('전남 순천 환경 보호 대작전', '전남 순천에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '전라남도 순천시', 4, '2025-03-15', '2025-03-17', 200, 24),
('서울 구로구 환경 보호 캠페인', '서울 구로구에서 환경 보호 활동을 진행합니다. 많은 참여 바랍니다!', '서울 구로구', 5, '2025-03-16', '2025-03-18', 250, 25),
('경기도 오산 환경 보호 활동', '경기도 오산에서 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 오산시', 3, '2025-03-17', '2025-03-19', 300, 26),
('부산 수영구 환경 보호 활동', '부산 수영구에서 환경 보호 활동을 진행합니다. 함께 자연을 지켜주세요!', '부산 수영구', 4, '2025-03-18', '2025-03-20', 150, 27),
('충북 청원 환경 보호 활동', '충북 청원에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '충청북도 청원군', 6, '2025-03-19', '2025-03-21', 200, 28),
('서울 강남구 환경 보호 챌린지', '서울 강남구에서 쓰레기 줍기 활동을 진행합니다. 많은 참여 부탁드립니다!', '서울 강남구', 5, '2025-03-20', '2025-03-22', 250, 29),
('경기도 평택 환경 보호 대작전', '경기도 평택에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다!', '경기도 평택시', 3, '2025-03-21', '2025-03-23', 300, 30);

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

# 7. 공지사항 테이블
create table announcement(
	anno int unsigned auto_increment,
    antitle varchar(100) not null,
    ancontent longtext not null,
    andate datetime default now(),
    adno int unsigned,
    constraint primary key( anno ),
    constraint foreign key( adno ) references admin( adno ) on update cascade on delete cascade
);

-- 공지사항 샘플 4개
insert into announcement( antitle, ancontent, andate, adno ) values
( '2024 그린 볼런티어 우수사례 공모전(자원봉사센터 부문) 개최' , "
<사진>
전국 245개 자원봉사센터에서는 지구를 위한 어떤 활동을 하고 있는지 소개해주세요!
< 접 수 방 법>
  구글폼(https://forms.gle/Ptvp6KSQ4eqT2j6J6) 신청서 접수! (자원봉사센터 부문)
  ■ 공모개요
❍ 공모기간 : 2024. 10. 30.(수) ~ 11. 17.(일)
❍ 공모주제 : 주제별 그린 볼런티어 활동 사례 (최근 3년 이내 활동)
  ① 디지털 탄소저감 : 디지털 사용량을 줄이고 디지털 탄소를 상쇄하는 자원봉사
  ② 자원순환 : 소비를 줄이고 재활용 또는 공유로 자원 낭비를 줄이는 자원봉사
  ③ 플로깅 : 참신하고 다양한 시도가 돋보이는 플로깅 활동
  ※ 2개 이상 해당 되는 경우, 주된 공모주제 1개 선택
❍ 공모대상 : 전국 245개 자원봉사센터
❍ 시상규모 : 총 10곳 선정
❍ 시상내역 : 선정 기관별 행정안전부 시상금 100만원
❍ 접수방법
  구글폼(https://forms.gle/Ptvp6KSQ4eqT2j6J6) 신청서 접수! (자원봉사센터 부문)
   ※신청서 접수 후 게시글 승인 처리되며, 승인 후 수정 불가
❍ 세부 공모내용
- 공모사례의 개괄적 내용이 포함된 소개글 및 대표사진 등록
- 자원봉사활동 사례를 총 3단계(기획/진행/평가)로 나누어 기재
- 각 단계별 세부 문항에 적합한 내용과 자료사진 첨부

■ 심사개요
❍ 심시기간 : 2024. 11. 20.(수) ~ 11. 26.(화)
❍ 심사위원 : 총 7명(내부위원 2명, 외부위원 5명) 예정
❍ 심사기준 : 적합성, 확산성, 협력성

■ 선정공고
❍공 고 일 : 2024. 11. 28.(목) 예정
❍공고방법 : 한국중앙자원봉사센터 홈페이지
 
■ 문의 : 한국중앙자원봉사센터 (02-2129-7507)

■ 2023년 탄소중립 자원봉사 우수사례 공모전 수상작 : 자원봉사센터 부문 

- 전라남도자원봉사센터    언제, 어디서나 탄소중립 실천! 바로온(溫)봉사
- 오산시자원봉사센터      위기의 기후행동가(꿀벌)를 위한 자원봉사 #I_will_Bee_back #Save_the_Bees
- 포항시자원봉사센터     지구탄탄(탄소중립&탄탄한실천)
- 서울강남구자원봉사센터   강남구자원봉사센터 하자! 탄소저감 자원봉사! [비닐없지 캠페인]
- 부산중구자원봉사센터   슬기로운 아이스팩 재사용
- 남해군자원봉사센터      함께 해요 SWW(small-wind-wish) 작은 희망의 바람
- 부산진구자원봉사센터   부산진구의 환경은 ‘부산진(鎭), 그린레인저’가 지킨다
- 광주시자원봉사센터      안 입고 묵혀둔 옷 나랑 바꿀래❓「모두의 옷장_21% 파티」
- 대전광역시자원봉사센터    미래세대를 위한 탄소중립 가족봉사 프로젝트 ‘100투더퓨처’
- 경주시자원봉사센터    탄소중립실천과 자원봉사일상화를 위한 '잔반제로 V-캠페인'
- 전주시자원봉사센터    버려지는 작은 플라스틱도 업사이클링 제품으로~!
- 서울강서구자원봉사센터   강서구 명소와 함께 하는 두루마블 줍깅
- 의성군자원봉사센터   지역문화와 탄소중립실천의 만남 '나랑 탄소여행 가지 않을래?'
- 송파구자원봉사센터   탄소중립실천 시작은 '나' 끝은 '우리'
- 달서구자원봉사센터   폐의약품의 안전한 폐기를 위한 ‘폐의약품 no! 달서 그린(Green)처방전’
  " , '2025-02-02 12:25:45' , 3 ),
( '2024 그린웨일 신규 캐릭터 오픈 이벤트' , '
[그린웨일 신규 캐릭터 오픈 이벤트!]

그린웨일에서 새로운 나무 친구들을 만나보세요! 
밀원수종 9종의 귀여운 신규 나무 캐릭터가 그린웨일에 등장했습니다~
신규 캐릭터 1종만 획득해도 선물이 팡팡
디지털 탄소 줄이고, 크리스마스 씨앗 키트 선물 받고!
지금 바로 참여하고 특별한 선물을 만나보세요~
 

이벤트 기간 : 2024. 11. 27 ~12. 15
참여방법  : 그린웨일 퀘스트를 수행하여 신규 나무 캐릭터 1종 획득
이벤트 선물 : 크리스마스 씨앗 키트
선물증정 : 이벤트 기간 동안 신규 나무 캐릭터를 획득한 30명 추첨 (이벤트 종료 후 30일 이내 우편 발송)
*그린웨일 참여링크 https://m.site.naver.com/1m20u

함께 알아볼 밀원수종 친구들 
#광나무 #꽝꽝나무 #매실나무 #명자나무
#백합나무 #쉬나무 #이나무 #찰피나무 #칠엽수
' , '2025-02-03 07:20:35' , 1 ),
( '빗물받이에서 시작되는 깨끗한 바다, 바다의 시작 캠페인 안내' , '<사진>' , '2025-02-04 11:12:05' , 1 ),
( '[공지] 포인트 리워드 기준표' , '<사진>' , '2024-01-01 09:12:05' , 1 );


select * from member;
select * from pointlog;
select * from board;
select * from recruit;
select * from reply;
select * from admin;
select * from announcement;

select member.mno,mid,mname,mphone, podate, pocontent,sum(pointlog.pocount) from member inner join pointlog on member.mno = pointlog.mno  where member.mno =1;

select pointlog.podate, pointlog.pocontent, sum(pointlog.pocount) as point from member inner join pointlog on member.mno =  pointlog.mno where member.mno =1 group by  pointlog.podate, pointlog.pocontent;