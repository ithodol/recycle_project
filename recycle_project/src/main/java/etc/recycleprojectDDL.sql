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
-- 회원가입 축하
( '회원가입 축하', 100, '2025-02-05 05:00:01', 1 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 2 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 3 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 4 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 5 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 6 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 7 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 8 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 9 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 10 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 11 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 12 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 13 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 14 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 15 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 16 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 17 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 18 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 19 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 20 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 21 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 22 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 23 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 24 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 25 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 26 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 27 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 28 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 29 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 30 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 31 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 32 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 33 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 34 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 35 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 36 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 37 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 38 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 39 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 40 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 41),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 42 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 43 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 44 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 45 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 46 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 47 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 48 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 49 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 50 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 51 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 52 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 53 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 54 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 55 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 56 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 57 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 58 ),
( '회원가입 축하', 100, '2025-02-05 05:00:01', 59 ),

-- 다양한 활동 예시
( '로그인', 1, '2025-02-06 05:50:01', 1 ),
( '로그인', 1, '2025-02-06 05:50:01', 2 ),
( '포인트 구매', 500, '2025-02-07 08:00:01', 3 ),
( '포인트 구매', 1000, '2025-02-07 09:00:01', 4 ),
( '로그인', 1, '2025-02-08 11:20:01', 5 ),
( '게시판 작성', 50, '2025-02-09 10:30:01', 6 ),
( '게시판 작성', 50, '2025-02-09 11:30:01', 7 ),
( '친구 초대', 200, '2025-02-10 14:00:01', 8 ),
( '친구 초대', 200, '2025-02-10 15:00:01', 9 ),
( '게시판 작성', 50, '2025-02-13 08:30:01', 12 ),
( '친구 초대', 250, '2025-02-14 14:00:01', 13 ),
( '로그인', 1, '2025-02-14 17:00:01', 14 ),
( '로그인', 1, '2025-02-16 06:45:01', 17 ),
( '로그인', 1, '2025-02-16 07:10:01', 18 ),
( '친구 초대', 300, '2025-02-17 09:30:01', 19 ),
( '게시판 작성', 75, '2025-02-20 10:00:01', 23 ),
( '친구 초대', 500, '2025-02-20 17:00:01', 24 ),
( '로그인', 1, '2025-02-21 05:45:01', 25 ),
( '로그인', 1, '2025-02-23 10:00:01', 28 ),
( '게시판 작성', 150, '2025-02-24 16:00:01', 29 ),
( '포인트 구매', 100, '2025-02-24 20:30:01', 30 ),
( '친구 초대', 400, '2025-02-25 05:30:01', 31 ),
( '친구 초대', 500, '2025-02-25 06:00:01', 32 ),
( '포인트 구매', 1000, '2025-02-26 18:10:01', 33 ),
( '포인트 구매', 300, '2025-02-26 20:45:01', 34 ),
( '로그인', 1, '2025-02-27 09:00:01', 35 ),
( '로그인', 1, '2025-02-28 08:15:01', 36 ),
( '포인트 구매', 400, '2025-02-28 09:30:01', 37 ),
( '포인트 구매', 2000, '2025-02-28 10:15:01', 38 ),
( '친구 초대', 350, '2025-02-28 12:00:01', 39 ),
( '게시판 작성', 100, '2025-02-28 18:30:01', 40 ),
( '로그인', 1, '2025-02-06 05:50:01', 1 ),
( '로그인', 1, '2025-02-06 06:30:01', 1 ),
( '로그인', 1, '2025-02-06 07:10:01', 1 ),
( '로그인', 1, '2025-02-06 08:00:01', 1 ),
( '로그인', 1, '2025-02-07 09:00:01', 1 ),
( '로그인', 1, '2025-02-07 11:00:01', 1 ),
( '로그인', 1, '2025-02-08 12:00:01', 1 ),
( '로그인', 1, '2025-02-08 13:00:01', 1 ),
( '로그인', 1, '2025-02-08 14:00:01', 1 ),
( '로그인', 1, '2025-02-09 15:00:01', 1 ),
( '로그인', 1, '2025-02-09 16:00:01', 1 ),
( '로그인', 1, '2025-02-09 17:00:01', 1 ),
( '로그인', 1, '2025-02-10 18:00:01', 1 ),
( '로그인', 1, '2025-02-10 19:00:01', 1 ),
( '로그인', 1, '2025-02-11 20:00:01', 1 ),
( '로그인', 1, '2025-02-11 21:00:01', 1 ),
( '로그인', 1, '2025-02-12 22:00:01', 1 ),
( '로그인', 1, '2025-02-13 05:00:01', 1 ),
( '로그인', 1, '2025-02-13 06:00:01', 1 ),
( '로그인', 1, '2025-02-13 07:00:01', 1 ),
( '로그인', 1, '2025-02-14 08:00:01', 1 ),
( '로그인', 1, '2025-02-14 09:00:01', 1 ),
( '로그인', 1, '2025-02-14 10:00:01', 1 ),
( '로그인', 1, '2025-02-15 11:00:01', 1 ),
( '구월동 로데오거리 쓰레기 줍기',7000, '2025-02-06 05:50:01', 2 ),
( '부평테마의 거리 쓰레기 줍기', 8000, '2025-02-07 08:00:01', 3 ),
( '남산에서 쓰레기 줍기', 6000, '2025-02-07 09:00:01', 4 );


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

-- 게시판 샘플 
insert into board (lno, btitle, bcontent, baddress, lat, lng, bpeople, bstartdate, benddate, bpoint, mno) values 
(6,"함께 줍깅 합시다","부산에서 같이 줍깅할 팀원 구합니다~","부산시 수영구", 35.1460, 129.1130, 5,"2025-02-05","2025-02-06",0,1),
(1,"남한산성 둘레길 1코스","서울을 한눈에 조망할 수 있는 코스로 넉넉하게 90분을 걸으며 쓰레기도 줍고 건강도 챙길 수 있는 코스 입니다.","경기 광주시", 37.4164, 127.2522, 3,"2025-02-06","2025-02-11",0,2),
(1,"고려대 석탑대동제 뒷정리 멤버 구합니다.","고려대학교 민주광장 일대에서 23시에 모이실 분 모집합니다. 좋은 일도 하고 포인트도 벌고 ^^ 모집 신청하시고 리워드 받아가세요~","서울시 성북구", 37.5894, 127.0338, 4,"2025-02-07","2025-02-15",0,3),
(12,"수선화가 아름다운 공곶이","공곶이는 노부부가 정성으로 가꾼 자연정원입니다. 동백꽃이 필 무렵이면 동백터널길이 운치있고, 봄이면 수선화가 예쁘게 피어서 수선화 정원이 됩니다. 앞쪽에는 몽돌해변과 옛날 해안경비초소가 있고 내도가 바라다 보이는 멋진 곳입니다.","경남 거제시", 34.8194, 128.6213, 3,"2025-02-08","2025-02-16",3000,1),
(15,"춘천 호수길 환경 미션", "춘천 호수길에서 환경을 보호하고 쓰레기를 줍는 활동을 진행합니다. 함께 자연을 깨끗하게 만들어요!", "강원도 춘천시 춘천호수길", 37.8792, 127.7353, 15, "2025-03-01", "2025-03-02", 150, 1),
(15,"춘천 의암호 주변 청소", "의암호 주변에서 쓰레기를 줍고 환경을 보호하는 캠페인입니다. 깨끗한 자연을 위해 함께 참여해 주세요.", "강원도 춘천시 의암호", 37.8830, 127.7812, 10, "2025-03-02", "2025-03-03", 100, 2),
(15,"춘천 소양강댐 환경 보호", "소양강댐 주변에서 쓰레기를 줍고 자연을 보호하는 활동을 함께 진행합니다.", "강원도 춘천시 소양강댐", 37.9336, 127.7205, 20, "2025-03-03", "2025-03-04", 200, 3),
(15,"춘천 남이섬 청소 활동", "남이섬에서 쓰레기 줍기 활동을 진행하며 아름다운 섬을 보호해요!", "강원도 춘천시 남이섬", 37.7949, 127.5403, 18, "2025-03-04", "2025-03-05", 250, 4),
(15,"춘천에서 쓰리기도 줍고 닭갈비도 같이 먹어요 숯불닭갈비로요!!","춘천은 정말 아름다운 지역으로 먹거리도 많고 걸을 수 있는 거리도 많습니다 많이 모여서 친해지며 맛난거 먹으면 좋을 것 같습니다.", "강원도 춘천시 강촌리", 37.8699, 127.7254, 12, "2025-03-05", "2025-03-06", 150, 1),
(15,"춘천 두루미 생태공원 청소", "두루미 생태공원에서 환경 보호 활동을 하며 자연을 보호하는 미션을 수행합니다.", "강원도 춘천시 두루미공원", 37.8803, 127.7268, 10, "2025-03-06", "2025-03-07", 180, 2),
(15,"춘천 석파산 트레킹 및 청소", "석파산 트레킹을 하면서 쓰레기를 줍고 환경을 보호하는 활동에 동참하세요.", "강원도 춘천시 석파산", 37.8721, 127.7483, 8, "2025-03-07", "2025-03-08", 120, 3),
(15,"춘천 중도섬 환경 정화 활동", "중도섬에서 자연을 보호하고 쓰레기를 줍는 활동을 함께 진행합니다.", "강원도 춘천시 중도섬", 37.8763, 127.7391, 10, "2025-03-08", "2025-03-09", 150, 4),
(15,"춘천 공지천 청소 캠페인", "공지천에서 쓰레기 줍기 활동을 통해 청정한 자연을 지키는 캠페인입니다.", "강원도 춘천시 공지천", 37.8799, 127.7230, 12, "2025-03-09", "2025-03-10", 100, 1),
(15,"춘천 송암스포츠타운 환경 보호", "송암스포츠타운에서 환경 보호 활동을 통해 깨끗한 공간을 유지해요.", "강원도 춘천시 송암동", 37.8681, 127.7104, 15, "2025-03-10", "2025-03-11", 150, 2),
(1,"서울 하늘공원 둘레길!!","하늘공원은 평화공원·난지천공원·난지한강공원·노을공원과 함께 월드컵경기장 주변의 5대 공원 중 하나이고, 주변이 상습 투기 지역은 아니지만 동물을 위한 작은 숲이 있어 주기적으로 관리가 필요한 지역입니다. 또한 하늘공원은 억새명소로 나들이객들이 많이 찾는 핫플레이스입니다. 같이 쓰레기도 줍고 포인트도 얻고 친분도 쌓읍시다~~","서울 마포구", 37.5683, 126.8971, 5,"2025-02-06","2025-02-27",2000,4),
(1,'서울 한강에서 환경 보호 챌린지!', '서울 한강에서 쓰레기를 함께 줍고 환경 보호에 동참하는 활동입니다. 참여자 모집!', '서울시 마포구', 37.5375, 126.9745, 5, '2025-02-10', '2025-02-12', 100, 1),
(6,'부산 해운대에서 바다 지키기!', '부산 해운대에서 쓰레기 줍기 활동을 진행합니다. 함께 바다를 지킬 참여자 모집!', '부산시 해운대구', 35.1583, 129.1605, 3, '2025-02-12', '2025-02-13', 200, 2),
(15,'강릉 해변 청소 캠페인', '강릉의 아름다운 해변에서 쓰레기 줍기 활동을 합니다. 자연을 지키는 데 동참하세요!', '강원도 강릉시', 37.7514, 128.8760, 4, '2025-02-15', '2025-02-16', 150, 3),
(1,'서울 남산 환경 미션', '남산에서 함께 환경을 정화하는 활동을 진행합니다. 많은 참여 부탁드립니다.', '서울시 용산구', 37.5512, 126.9916, 6, '2025-02-18', '2025-02-19', 50, 4),
(4,'대구 중구 거리 청소 대작전!', '대구 중구에서 쓰레기 줍기 활동을 진행합니다. 함께 깨끗한 거리 만들기에 동참해주세요.', '대구시 중구', 35.8668, 128.5943, 4, '2025-02-20', '2025-02-22', 300, 5),
(1,'광화문 환경 보호 챌린지', '광화문에서 함께 쓰레기 줍기 활동을 진행합니다. 환경을 지킬 준비 되셨나요?', '서울시 종로구', 37.5665, 126.9780, 5, '2025-02-20', '2025-02-22', 100, 1),
(6,'부산 해운대에서 환경 보호하는 날', '부산 해운대에서 환경 보호 활동을 함께 합니다. 많은 참여 부탁드립니다!', '부산시 해운대구', 35.1583, 129.1605, 4, '2025-02-21', '2025-02-23', 150, 2),
(8,'경기도 하늘공원 환경 보호 데이', '경기도 하늘공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 성남시', 37.4443, 127.1370, 3, '2025-02-22', '2025-02-24', 200, 3),
(16,'제주도 해변 정화 활동', '제주도 해변에서 쓰레기 줍기와 자연 보호 활동을 합니다. 참여해주세요!', '제주도 제주시', 33.4996, 126.5310, 6, '2025-02-23', '2025-02-25', 250, 4),
(2,'인천 송도 환경 보호 워크숍', '인천 송도에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '인천시 송도구', 37.3800, 126.6499, 4, '2025-02-24', '2025-02-26', 300, 5),
(1,'서울 남산에서 쓰레기 줍기!', '서울 남산에서 환경 보호 활동을 진행합니다. 함께 참여해 주세요!', '서울시 용산구', 37.5512, 126.9916, 5, '2025-02-25', '2025-02-27', 100, 6),
(6,'부산 기장군 환경 보호 대모임', '부산 기장군에서 환경 보호 활동을 함께 합니다. 많은 분들의 참여 부탁드립니다!', '부산시 기장군', 35.2355, 129.1557, 4, '2025-02-26', '2025-02-28', 150, 7),
(12,'경남 거제에서 환경 보호 캠페인', '경남 거제에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 동참해 주세요!', '경남 거제시', 34.8885, 128.6211, 3, '2025-02-27', '2025-03-01', 200, 8),
(1,'서울 양재천 환경 보호 대작전', '서울 양재천에서 쓰레기 줍기 활동과 함께 환경을 지키는 활동을 진행합니다.', '서울시 서초구', 37.4634, 127.0470, 5, '2025-02-28', '2025-03-02', 250, 9),
(15,'강원도 정선에서 환경 보호 활동', '강원도 정선에서 함께 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '강원도 정선군', 37.4603, 128.0744, 4, '2025-03-01', '2025-03-03', 300, 10),

(3,'대전 둔산동 환경 보호 캠페인', '대전 둔산동에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '대전시 서구 둔산동', 36.3504, 127.3845, 5, '2025-03-02', '2025-03-04', 150, 11),
(9,'청주 상당공원 환경 보호', '청주 상당공원에서 함께 쓰레기 줍기 활동을 진행합니다. 자연을 지켜주세요!', '충청북도 청주시 상당구', 36.6330, 127.4898, 4, '2025-03-03', '2025-03-05', 200, 12),
(1,'서울 월드컵공원 환경 보호', '서울 월드컵공원에서 쓰레기 줍기 활동을 진행하며 환경 보호에 동참해주세요.', '서울시 마포구', 37.5665, 126.8999, 5, '2025-03-04', '2025-03-06', 250, 13),
(1,'서울 종로구 환경 보호 캠페인', '서울 종로구에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '서울시 종로구', 37.5721, 126.9792, 3, '2025-03-05', '2025-03-07', 300, 14),
(8,'경기도 의정부 환경 보호 활동', '경기도 의정부에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다.', '경기도 의정부시', 37.7387, 127.0335, 4, '2025-03-06', '2025-03-08', 150, 15),
(10,'충남 아산 환경 보호 챌린지', '충남 아산에서 쓰레기 줍기와 환경 보호 활동을 진행합니다. 동참 부탁드립니다.', '충청남도 아산시', 36.7885, 127.0301, 5, '2025-03-07', '2025-03-09', 200, 16),
(15,'강원도 평창 환경 보호 캠페인', '강원도 평창에서 환경 보호 활동을 진행합니다. 참여해주세요!', '강원도 평창군', 37.4325, 128.3905, 4, '2025-03-08', '2025-03-10', 250, 17),
(5,'울산 남구 환경 보호 활동', '울산 남구에서 함께 쓰레기 줍기 및 환경 보호 활동을 진행합니다.', '울산시 남구', 35.5280, 129.3251, 6, '2025-03-09', '2025-03-11', 300, 18),
(7,'광주 북구 환경 보호 대작전', '광주 북구에서 쓰레기 줍기 활동을 진행합니다. 환경을 지키는 데 함께 해 주세요!', '광주 북구', 35.1780, 126.9097, 5, '2025-03-10', '2025-03-12', 150, 19),
(13,'전주 덕진공원 환경 보호', '전주 덕진공원에서 쓰레기 줍기 및 환경 보호 활동을 진행합니다. 많은 참여 바랍니다.', '전라북도 전주시 덕진구', 35.8351, 127.1377, 3, '2025-03-11', '2025-03-13', 200, 20),
(1,'서울 강동구 환경 보호 챌린지', '서울 강동구에서 환경 보호 활동을 진행합니다. 참여를 기다립니다!', '서울 강동구', 37.5300, 127.1233, 5, '2025-03-12', '2025-03-14', 250, 21),
(4,'대구 동구 환경 보호 캠페인', '대구 동구에서 쓰레기 줍기 활동을 함께 진행합니다. 많은 참여 부탁드립니다.', '대구 동구', 35.8685, 128.6114, 4, '2025-03-13', '2025-03-15', 300, 22),
(1,'서울 강서구 환경 보호 활동', '서울 강서구에서 쓰레기를 줍고 환경 보호 활동에 동참해주세요!', '서울 강서구', 37.5514, 126.8494, 6, '2025-03-14', '2025-03-16', 150, 23),
(14,'전남 순천 환경 보호 대작전', '전남 순천에서 환경 보호 활동을 진행합니다. 함께 깨끗한 환경을 만들어가요!', '전라남도 순천시', 34.9507, 127.5010, 4, '2025-03-15', '2025-03-17', 200, 24),
(1,'서울 구로구 환경 보호 캠페인', '서울 구로구에서 환경 보호 활동을 진행합니다. 많은 참여 바랍니다!', '서울 구로구', 37.4952, 126.8878, 5, '2025-03-16', '2025-03-18', 250, 25),
(8,'경기도 오산 환경 보호 활동', '경기도 오산에서 환경 보호 활동을 진행합니다. 동참해 주세요!', '경기도 오산시', 37.1522, 127.0667, 3, '2025-03-17', '2025-03-19', 300, 26),
(6,'부산 수영구 환경 보호 활동', '부산 수영구에서 환경 보호 활동을 진행합니다. 함께 자연을 지켜주세요!', '부산 수영구', 35.1582, 129.1316, 4, '2025-03-18', '2025-03-20', 150, 27),
(9,'충북 청원 환경 보호 활동', '충북 청원에서 환경 보호 활동을 함께 진행합니다. 많은 참여 바랍니다!', '충청북도 청원군', 36.6489, 127.4221, 6, '2025-03-19', '2025-03-21', 200, 28),
(1,'서울 강남구 환경 보호 챌린지', '서울 강남구에서 쓰레기 줍기 활동을 진행합니다. 많은 참여 부탁드립니다!', '서울 강남구', 37.5172, 127.0473, 5, '2025-03-20', '2025-03-22', 250, 29),
(8,'경기도 평택 환경 보호 대작전', '경기도 평택에서 환경 보호 활동을 진행합니다. 많은 참여 부탁드립니다!', '경기도 평택시', 36.9984, 127.1132, 3, '2025-03-21', '2025-03-23', 300, 30),

(15,"강릉 송정 해변에서 쓰레기 줍기", "강릉 송정 해변에서 함께 쓰레기를 줍고 청정한 해변을 유지해보세요.", "강원도 강릉시", 37.5432, 128.7001, 6, "2025-02-19", "2025-02-20", 0, 1),
(1,"서울 홍제천 환경 미션", "홍제천을 청소하며 환경 보호를 실천하는 활동입니다. 함께 참여해주세요!", "서울시 서대문구", 37.5767, 126.9354, 8, "2025-02-20", "2025-02-21", 0, 2),
(6,"부산 동백섬에서 자연 보호 캠페인", "부산 동백섬에서 환경 보호 활동에 참여하세요. 쓰레기를 줍고 자연을 지키는 일입니다.", "부산시 부산진구", 35.1640, 129.0912, 10, "2025-02-21", "2025-02-22", 0, 3),
(1,"서울 시청 앞 광장에서 청소 활동", "서울 시청 앞 광장에서 쓰레기 줍기와 함께 환경을 지키는 미션에 참여하세요!", "서울시 중구", 37.5665, 126.9780, 12, "2025-02-22", "2025-02-23", 0, 4),
(6,"부산 태종대 자연 보호 활동", "부산 태종대에서 자연을 보호하며 쓰레기 줍는 활동에 동참해 주세요.", "부산시 영도구", 35.0739, 129.1031, 7, "2025-02-23", "2025-02-24", 0, 1),
(1,"서울 강남구 환경 정화", "강남구 거리에서 쓰레기를 줍고 함께 환경을 깨끗하게 만드는 활동입니다.", "서울시 강남구", 37.5172, 127.0473, 15, "2025-02-24", "2025-02-25", 10, 2),
(3,"대전 한밭수목원에서 환경 정화", "대전 한밭수목원에서 자연 보호 활동을 진행합니다. 많은 참여 부탁드립니다.", "대전광역시 중구", 36.3413, 127.3848, 5, "2025-02-25", "2025-02-26", 0, 3),
(11,"경주 보문호수 주변 청소", "경주 보문호수 근처에서 쓰레기 줍기 활동을 합니다. 자연을 함께 지켜요!", "경북 경주시", 35.8537, 129.2565, 8, "2025-02-26", "2025-02-27", 0, 4),
(2,"인천 월미도에서 해변 청소", "인천 월미도에서 해변 청소 및 환경 보호 활동을 진행합니다. 함께 참여해주세요!", "인천시 중구", 37.4750, 126.6187, 6, "2025-02-27", "2025-02-28", 0, 1),
(6,"부산 기장군 일광해수욕장 쓰레기 줍기", "기장군 일광해수욕장에서 쓰레기 줍기 활동을 함께 합니다. 환경 보호에 동참하세요!", "부산시 기장군", 35.3012, 129.1795, 4, "2025-02-28", "2025-03-01", 0, 2),
(5,"울산 태화강에서 환경 미션", "울산 태화강에서 환경을 정화하는 활동에 참여하고, 태화강을 깨끗하게 만들어요.", "울산광역시", 35.5290, 129.3144, 9, "2025-03-01", "2025-03-02", 0, 3),
(1,"서울 올림픽 공원 환경 보호 활동", "올림픽 공원에서 함께 환경 보호 미션을 수행하고 깨끗한 서울을 만드세요.", "서울시 송파구", 37.5153, 127.1210, 10, "2025-03-02", "2025-03-03", 0, 4),
(15,"강원도 평창에서 자연 보호 활동", "평창의 아름다운 자연을 보호하며 환경 정화 활동을 함께 합니다.", "강원도 평창군", 37.4513, 128.2800, 7, "2025-03-03", "2025-03-04", 0, 1),
(13,"전주 한옥마을에서 쓰레기 줍기", "전주 한옥마을 주변에서 쓰레기를 줍고 깨끗한 환경을 만들어요.", "전북 전주시", 35.8245, 127.1480, 8, "2025-03-04", "2025-03-05", 0, 2),
(1,"서울 동대문구 환경 미션", "동대문구에서 쓰레기 줍기 활동을 진행합니다. 함께 환경 보호에 참여해요!", "서울시 동대문구", 37.5740, 127.0389, 12, "2025-03-05", "2025-03-06", 0, 3),
(7,"광주 무등산 환경 보호 활동", "광주 무등산에서 환경 보호 활동을 진행합니다. 자연을 함께 지켜요!", "광주광역시", 35.1570, 126.9117, 6, "2025-03-06", "2025-03-07", 0, 4),
(9,"충주호 주변 청소 활동", "충주호 주변에서 쓰레기를 줍고 깨끗한 환경을 유지하는 활동입니다.", "충청북도 충주시", 37.0387, 127.9354, 7, "2025-03-07", "2025-03-08", 0, 1),
(8,"양평 두물머리에서 자연 보호 활동", "양평 두물머리에서 자연을 보호하며 함께 환경 정화 활동에 참여하세요.", "경기도 양평군", 37.5118, 127.4879, 5, "2025-03-08", "2025-03-09", 0, 2),
(11,"안동 하회마을 주변 청소", "안동 하회마을 주변에서 쓰레기를 줍고 환경 보호 활동을 함께 진행합니다.", "경북 안동시", 36.5663, 128.6911, 8, "2025-03-09", "2025-03-10", 0, 3),
(1,"서울 북악산 환경 미션", "북악산에서 환경 보호 활동을 진행하며 청결한 서울을 만듭시다.", "서울시 종로구", 37.5922, 126.9705, 10, "2025-03-10", "2025-03-11", 0, 4),
(14,"여수 오동도 환경 보호 캠페인", "여수 오동도에서 환경 보호 캠페인에 참여해 주십시오. 함께 깨끗한 바다를 만들어 가요.", "전남 여수시", 34.8647, 127.7331, 6, "2025-03-11", "2025-03-12", 0, 1),
(16,"제주 올레길 환경 정화 활동", "제주 올레길에서 환경을 정화하며 쓰레기 줍기 활동에 참여합니다.", "제주도 제주시", 33.3925, 126.5033, 5, "2025-03-12", "2025-03-13", 0, 2),
(14,"전남 보성에서 쓰레기 줍기", "전남 보성에서 자연 보호 활동을 진행하며 환경을 지킵니다.", "전남 보성군", 34.7556, 127.1889, 7, "2025-03-13", "2025-03-14", 0, 3),
(8,"경기 용인에서 환경 보호 미션", "경기 용인에서 함께 환경 보호 미션을 진행합니다. 쓰레기를 줍고 자연을 지켜요!", "경기도 용인시", 37.2413, 127.1771, 6, "2025-03-14", "2025-03-15", 0, 4),
(1,"서울 한강시민공원에서 쓰레기 줍기", "서울 한강시민공원에서 쓰레기 줍기 활동을 함께 진행합니다. 환경을 깨끗하게 유지합시다.", "서울시 강서구", 37.5500, 126.8192, 15, "2025-03-15", "2025-03-16", 0, 1),
(6,"부산 광안리 해변 청소", "부산 광안리 해변에서 청소 활동을 진행합니다. 함께 깨끗한 해변을 만들어요.", "부산시 수영구", 35.1581, 129.1187, 8, "2025-03-16", "2025-03-17", 0, 2),
(1,"서울 서울숲 환경 보호 캠페인", "서울숲에서 환경 보호 캠페인을 진행하며 쓰레기를 줍고 자연을 보호합니다.", "서울시 성동구", 37.5443, 127.0399, 10, "2025-03-17", "2025-03-18", 0, 3),
(15,"강원도 원주에서 환경 보호 활동", "강원도 원주에서 함께 환경 보호 활동을 진행합니다. 자연을 지키는 데 동참해주세요.", "강원도 원주시", 37.3421, 127.9210, 7, "2025-03-18", "2025-03-19", 0, 4),
(13,"전북 군산에서 자연 보호 캠페인", "군산에서 환경 보호 캠페인에 참여하고 깨끗한 자연을 지켜요.", "전북 군산시", 35.9746, 126.7371, 6, "2025-03-19", "2025-03-20", 0, 1),
(10,"충남 아산에서 쓰레기 줍기", "아산에서 함께 쓰레기 줍기 활동을 진행하고 깨끗한 환경을 만들어 갑니다.", "충청남도 아산시", 36.7847, 127.0006, 9, "2025-03-20", "2025-03-21", 10, 2),
(8,"경기 고양시 환경 정화", "고양시에서 환경 정화 활동을 진행하며 깨끗한 거리를 만듭니다.", "경기도 고양시", 37.6534, 126.8350, 10, "2025-03-21", "2025-03-22", 200, 3),
(14,"전남 순천에서 자연 보호 활동", "순천에서 자연 보호 활동에 참여하고 아름다운 자연을 지키세요.", "전남 순천시", 34.9504, 127.4870, 5, "2025-03-22", "2025-03-23", 250, 4),
(1,"서울 서울숲에서 환경 미션", "서울숲에서 환경 미션을 수행하며 함께 환경을 보호하는 활동을 합니다.", "서울시 성동구", 37.5444, 127.0408, 12, "2025-03-23", "2025-03-24", 0, 1),
(15,"강릉 송정해변 환경 정화", "강릉 송정해변에서 자연 보호 활동을 함께 진행합니다. 쓰레기 줍기와 함께 청정한 해변을 지켜요.", "강원도 강릉시 송정동", 37.5272, 128.7840, 10, "2025-03-01", "2025-03-02", 0, 1),
(1,"서울 한강공원 벚꽃길 청소", "한강공원의 벚꽃길을 함께 청소하며 봄의 향기를 만끽하세요.", "서울시 마포구 한강로", 37.5497, 126.9470, 15, "2025-03-02", "2025-03-03", 0, 2),
(6,"부산 해운대 해변 쓰레기 줍기", "부산 해운대 해변에서 함께 쓰레기 줍기를 하며 환경을 보호합시다.", "부산시 해운대구 해운대해변로", 35.1585, 129.1606, 10, "2025-03-03", "2025-03-04", 0, 3),
(1,"서울 남산공원 환경 미션", "남산에서 자연을 보호하고 깨끗한 서울을 만들어가는 환경 미션에 참여하세요.", "서울시 중구 남산동", 37.5512, 126.9882, 10, "2025-03-04", "2025-03-05", 0, 4),
(13,"전주 한옥마을 주변 쓰레기 줍기", "전주 한옥마을에서 쓰레기를 줍고 환경 보호 활동을 함께 진행해요.", "전북 전주시 완산구 한옥마을", 35.8245, 127.1480, 12, "2025-03-05", "2025-03-06", 0, 1),
(2,"인천 송도 센트럴파크 환경 캠페인", "송도 센트럴파크에서 쓰레기 줍기와 함께 환경 보호 활동에 동참하세요.", "인천시 연수구 송도동", 37.3810, 126.6516, 10, "2025-03-06", "2025-03-07", 0, 2),
(3,"대전 갑천 청소 캠페인", "대전 갑천에서 함께 쓰레기를 줍고 환경을 깨끗하게 만듭니다.", "대전광역시 서구 갑천", 36.3325, 127.3731, 8, "2025-03-07", "2025-03-08", 0, 3),
(15,"강원도 평창 자연 보호", "평창에서 환경 보호 활동을 진행하며 자연을 지키는 미션을 수행합니다.", "강원도 평창군 봉평면", 37.4500, 128.2900, 6, "2025-03-08", "2025-03-09", 0, 4),
(1,"서울 올림픽공원 쓰레기 줍기", "올림픽공원에서 쓰레기를 줍고 환경을 보호하는 활동을 함께 진행합니다.", "서울시 송파구 올림픽로", 37.5158, 127.1216, 10, "2025-03-09", "2025-03-10", 0, 1),
(6,"부산 광안리에서 환경 보호", "광안리 해변에서 함께 환경 보호 활동에 동참해 주세요!", "부산시 수영구 광안리", 35.1582, 129.1189, 12, "2025-03-10", "2025-03-11", 0, 2),
(8,"경기도 용인 자연 보호 캠페인", "용인시에서 함께 자연 보호 활동을 진행하고 쓰레기를 줍습니다.", "경기도 용인시 수지구", 37.2334, 127.0350, 8, "2025-03-11", "2025-03-12", 0, 3),
(1,"서울 청계천 청소 활동", "청계천 주변에서 쓰레기를 줍고 자연을 보호하는 활동을 함께 합니다.", "서울시 종로구 청계천로", 37.5701, 126.9779, 15, "2025-03-12", "2025-03-13", 0, 4),
(14,"전남 순천만 자연 보호 활동", "순천만에서 자연을 보호하며 환경 미션을 수행합니다.", "전남 순천시 순천만", 34.9600, 127.4945, 10, "2025-03-13", "2025-03-14", 0, 1),
(11,"경북 경주에서 쓰레기 줍기", "경주에서 자연을 보호하며 쓰레기 줍기 활동에 참여해 주세요!", "경북 경주시 보문로", 35.8567, 129.2235, 12, "2025-03-14", "2025-03-15", 0, 2),
(6,"부산 동백섬 쓰레기 줍기", "부산 동백섬에서 쓰레기를 줍고 청정한 환경을 만들어요.", "부산시 영도구 동백섬", 35.0736, 129.1067, 13, "2025-03-15", "2025-03-16", 0, 3),
(1,"서울 강남구 도산공원 청소", "도산공원에서 쓰레기 줍기 활동을 진행합니다. 함께 환경을 깨끗하게 해요.", "서울시 강남구 도산대로", 37.5213, 127.0222, 10, "2025-03-16", "2025-03-17", 0, 4),
(7,"광주 무등산 쓰레기 줍기", "무등산에서 환경 보호 활동에 참여하며 쓰레기를 줍습니다.", "광주광역시 북구 무등로", 35.1587, 126.9201, 7, "2025-03-17", "2025-03-18", 0, 1),
(8,"경기 용인 에버랜드 주변 청소", "에버랜드 주변에서 쓰레기 줍기 활동을 하며 자연을 보호합니다.", "경기도 용인시 처인구", 37.2651, 127.1884, 14, "2025-03-18", "2025-03-19", 0, 2),
(1,"서울 경복궁 주변 환경 보호", "경복궁 주변에서 함께 쓰레기를 줍고 환경 보호 활동을 진행합니다.", "서울시 종로구 경복궁로", 37.5779, 126.9769, 12, "2025-03-19", "2025-03-20", 0, 3),
(10,"충남 아산 환경 미션", "아산에서 환경 미션을 수행하며 쓰레기를 줍고 자연을 보호합니다.", "충청남도 아산시 배방읍", 36.7847, 127.0024, 8, "2025-03-20", "2025-03-21", 10, 4),
(8,"경기 고양시 하늘공원 쓰레기 줍기", "고양시 하늘공원에서 함께 쓰레기를 줍고 환경을 보호하는 활동에 동참하세요.", "경기도 고양시 일산동구", 37.6548, 126.7720, 6, "2025-03-21", "2025-03-22", 150, 1),
(1,"서울 여의도 공원 쓰레기 줍기", "여의도 공원에서 쓰레기를 줍고 깨끗한 환경을 만들어갑니다.", "서울시 영등포구 여의도동", 37.5262, 126.9259, 15, "2025-03-22", "2025-03-23", 200, 2),
(6,"부산 송도 해수욕장 쓰레기 줍기", "송도 해수욕장에서 함께 환경 보호 활동을 진행합니다. 깨끗한 바다를 지켜요.", "부산시 서구 송도동", 35.0907, 129.0273, 12, "2025-03-23", "2025-03-24", 180, 3),
(1,"서울 청량리 환경 보호 캠페인", "청량리에서 환경을 보호하며 쓰레기를 줍는 활동에 동참하세요.", "서울시 동대문구 청량리", 37.5777, 127.0483, 10, "2025-03-24", "2025-03-25", 150, 4),
(16,"제주 올레길 쓰레기 줍기", "제주 올레길에서 자연 보호를 위해 쓰레기를 줍고 환경 보호에 동참합니다.", "제주도 제주시", 33.3925, 126.5033, 11, "2025-03-25", "2025-03-26", 0, 1),
(1,"서울 서울숲 환경 보호 활동", "서울숲에서 환경 보호 활동에 참여하여 쓰레기를 줍고 자연을 보호합니다.", "서울시 성동구 뚝섬로", 37.5444, 127.0408, 15, "2025-03-26", "2025-03-27", 0, 2),
(7,"광주 금남로 환경 캠페인", "광주 금남로에서 환경 캠페인에 참여하며 쓰레기를 줍고 깨끗한 도시를 만들어 가요.", "광주광역시 동구 금남로", 35.1594, 126.8509, 15, "2025-03-27", "2025-03-28", 150, 3),
(13,"전북 군산 해변 쓰레기 줍기", "군산 해변에서 쓰레기를 줍고 깨끗한 해변을 유지하는 활동을 진행합니다.", "전북 군산시 해망로", 35.9640, 126.7382, 10, "2025-03-28", "2025-03-29", 0, 4),
(1,"서울 남산 둘레길 청소", "남산 둘레길에서 환경 보호 활동을 함께 진행하며 자연을 지켜요.", "서울시 용산구 남산길", 37.5566, 126.9758, 10, "2025-03-29", "2025-03-30", 0, 1),
(6,"부산 태종대 청소 활동", "태종대에서 쓰레기를 줍고 자연 보호 활동을 합니다. 함께 환경을 지켜요.", "부산시 영도구 태종로", 35.0735, 129.0032, 12, "2025-03-30", "2025-03-31", 200, 5);


# 4. 모집 테이블
create table recruit(
	reno int unsigned auto_increment,
    mno int unsigned,
    bno int unsigned,
    constraint primary key( reno ),
    constraint foreign key ( mno ) references member( mno ) on update cascade on delete cascade ,
	constraint foreign key ( bno ) references board( bno ) on update cascade on delete cascade
);


-- 모집 테이블 샘플
insert into recruit(mno, bno) values(1, 1);
insert into recruit(mno, bno) values(2, 11);
insert into recruit(mno, bno) values(3, 98);
insert into recruit(mno, bno) values(4, 1);
insert into recruit(mno, bno) values(5, 98);
insert into recruit(mno, bno) values(6, 1);
insert into recruit(mno, bno) values(7, 98);
insert into recruit(mno, bno) values(8, 1);
insert into recruit(mno, bno) values(9, 1);
insert into recruit(mno, bno) values(10, 84);

insert into recruit(mno, bno) values(11, 2);
insert into recruit(mno, bno) values(12, 55);
insert into recruit(mno, bno) values(13, 2);
insert into recruit(mno, bno) values(14, 56);
insert into recruit(mno, bno) values(15, 54);
insert into recruit(mno, bno) values(16, 2);
insert into recruit(mno, bno) values(17, 25);
insert into recruit(mno, bno) values(18, 2);
insert into recruit(mno, bno) values(19, 23);
insert into recruit(mno, bno) values(20, 23);

-- 게시물 번호 3에 대한 recruit 테이블 데이터
insert into recruit(mno, bno) values(21, 3);
insert into recruit(mno, bno) values(22, 4);
insert into recruit(mno, bno) values(23, 45);
insert into recruit(mno, bno) values(24, 87);
insert into recruit(mno, bno) values(25, 3);
insert into recruit(mno, bno) values(26, 51);
insert into recruit(mno, bno) values(27, 3);
insert into recruit(mno, bno) values(28, 32);
insert into recruit(mno, bno) values(29, 6);
insert into recruit(mno, bno) values(30, 3);

insert into recruit(mno, bno) values(31, 4);
insert into recruit(mno, bno) values(32, 4);
insert into recruit(mno, bno) values(33, 4);
insert into recruit(mno, bno) values(34, 15);
insert into recruit(mno, bno) values(35, 4);
insert into recruit(mno, bno) values(36, 4);
insert into recruit(mno, bno) values(37, 65);
insert into recruit(mno, bno) values(38, 36);
insert into recruit(mno, bno) values(39, 19);
insert into recruit(mno, bno) values(40, 4);

insert into recruit(mno, bno) values(41, 5);
insert into recruit(mno, bno) values(42, 5);
insert into recruit(mno, bno) values(43, 24);
insert into recruit(mno, bno) values(44, 5);
insert into recruit(mno, bno) values(45, 20);
insert into recruit(mno, bno) values(46, 24);
insert into recruit(mno, bno) values(47, 26);
insert into recruit(mno, bno) values(48, 5);
insert into recruit(mno, bno) values(49, 26);
insert into recruit(mno, bno) values(50, 5);

insert into recruit(mno, bno) values(51, 6);
insert into recruit(mno, bno) values(52, 54);
insert into recruit(mno, bno) values(53, 61);
insert into recruit(mno, bno) values(54, 85);
insert into recruit(mno, bno) values(55, 6);

insert into recruit(mno, bno) values(56, 7);
insert into recruit(mno, bno) values(57, 48);
insert into recruit(mno, bno) values(58, 6);
insert into recruit(mno, bno) values(59, 28);




-- test --
select * from recruit inner join member on recruit.mno = member.mno;
select * from member where mno = 1;
select * from board where bno = 10;
SELECT * FROM recruit r INNER JOIN member m ON r.mno = m.mno WHERE m.mno = 1;
select mno from member;
select * from member m inner join board b on m.mno = b.mno where bno=10;
-- 오류 select board.bpoint, board.bcontent, member.mno from board, member inner join member on board.mno = member.mno inner join recruit recruit on board.bno = recruit.bno where member.mno = 1 and board.bno = 1;
-- select문에서 2개의 테이블 값을 가져오는 방법?
select board.bpoint, board.bcontent, member.mno, recruit.reno from board inner join member on board.mno = member.mno inner join recruit recruit on board.bno = recruit.bno where board.bno = 1;
select board.bpoint, board.bcontent, member.mno, recruit.reno from recruit inner join member on recruit.mno = member.mno inner join board on recruit.bno = board.bno where board.bno=1 and board.bpoint=0;
insert into recruit(mno, bno) value (1, 11);
select * from recruit;
insert into pointlog(pocontent, pocount, podate, mno) value ('축제 정리', '5400', now(), 1);
select * from pointlog;

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

select member.mno, mnickname,mid, mname, IFNULL(sum(pointlog.pocount), 0) as mpoint from member left join pointlog on member.mno = pointlog.mno group by member.mno order by mpoint DESC limit 0,10;

