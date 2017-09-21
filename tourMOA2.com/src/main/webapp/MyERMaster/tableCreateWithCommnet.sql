
/* Drop Triggers */

DROP TRIGGER TRI_estimate_unq;
DROP TRIGGER TRI_goods_unq;
DROP TRIGGER TRI_member_unq;
DROP TRIGGER TRI_point_unq;
DROP TRIGGER TRI_popup_unq;
DROP TRIGGER TRI_reserv_unq;
DROP TRIGGER TRI_ticket_unq;



/* Drop Tables */

DROP TABLE company CASCADE CONSTRAINTS;
DROP TABLE estimate CASCADE CONSTRAINTS;
DROP TABLE goods CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE point CASCADE CONSTRAINTS;
DROP TABLE popup CASCADE CONSTRAINTS;
DROP TABLE reserv CASCADE CONSTRAINTS;
DROP TABLE ticket CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_estimate_unq;
DROP SEQUENCE SEQ_goods_unq;
DROP SEQUENCE SEQ_member_unq;
DROP SEQUENCE SEQ_point_unq;
DROP SEQUENCE SEQ_popup_unq;
DROP SEQUENCE SEQ_reserv_unq;
DROP SEQUENCE SEQ_ticket_unq;




/* Create Sequences */

CREATE SEQUENCE SEQ_estimate_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_goods_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_member_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_point_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_popup_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reserv_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ticket_unq INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- 회사정보
CREATE TABLE company
(
	-- 회사명 : 회사명
	cname varchar2(20) NOT NULL,
	-- 주소 : 주소
	addr varchar2(100),
	-- 전화번호 : 전화번호
	tel varchar2(20) NOT NULL,
	-- 이메일 : 이메일
	email varchar2(50) NOT NULL,
	-- 사업자번호 : 사업자번호
	cnum varchar2(30)
);


-- 견적테이블
CREATE TABLE estimate
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 여행타입 : 여행타입
	type varchar2(20) NOT NULL,
	-- 메일주소 : 메일주소
	email varchar2(50) NOT NULL,
	-- 이름 : 예약자이름
	name varchar2(20) NOT NULL,
	-- 휴대번호 : 휴대번호
	phone varchar2(20) NOT NULL,
	-- 인원수 : 예약인원수
	person number NOT NULL,
	-- 가격대 : 원하는 가격대
	money varchar2(50) NOT NULL,
	-- 통화가능시간 : 통화가능시간
	ptime varchar2(50) NOT NULL,
	-- 선호지역 : 선호지역
	floc varchar2(50) NOT NULL,
	-- 출발일 : 여행 출발일
	sdate date NOT NULL,
	-- 도착일 : 도착일
	edate date,
	-- 출발일변경여부 : 출발일 변경가능여부
	schange char(1) NOT NULL,
	-- 항공 : 항공편
	airline varchar2(50),
	-- 숙박시설종류 : 숙박시설종류
	stay char(1) NOT NULL,
	-- 숙박지명 : 숙박지명
	stayname varchar2(50) NOT NULL,
	-- 고객요청사항 : 고객요청사항
	req varchar2(1000),
	-- 등록일 : 등록일
	rdate date NOT NULL,
	-- 처리여부 : 처리여부
	result char(1),
	-- 담당자 : 담당자
	manager varchar2(50),
	PRIMARY KEY (unq)
);


-- 상품테이블
CREATE TABLE goods
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 여행상품명 : 여행상품명
	title varchar2(100),
	-- 큰구분 상품카테고리 : 상품구분 큰 카테고리
	gubun varchar2(20),
	-- 국가 : 여행국가
	nation varchar2(20),
	-- 도시 : 여행도시
	city varchar2(20),
	-- 상품가격 : 상품가격
	price number,
	-- 출발일 : 여행 출발일
	sdate date,
	-- 도착일 : 여행도착일
	edate date,
	-- 여행기간 : 1박2일, 2박4일 select 박스 이용 2개- DB값은 1개로
	period varchar2(20),
	-- 간략일정 : 인천-보라카이-인천
	schd varchar2(50),
	-- 상품상세정보 : 상품상세정보 1 : 예약유의사항, 상품안내,포함사항,불포함사항, 옵션, 참고/전달, 일정표, 관광지 정보
	detail1 varchar2(4000),
	-- 상세정보2 : 필수사항, 보험, 약관, 여권/비자, 입금계좌, 유의사항, 쇼핑안내
	detail2 varchar2(4000),
	-- 이용항공 : 대한항공/아시아나
	airline varchar2(50),
	-- 인원수 : 예약인원수
	person number,
	-- 상품번호 : 상품번호 CH.....
	code varchar2(50),
	PRIMARY KEY (unq)
);


-- 회원테이블
CREATE TABLE member
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 회원아이디 : 회원아이디
	id varchar2(20) NOT NULL,
	-- 패스워드 : 회원비밀번호 : 암호화(복호화) 가능한지 확인할 것.
	pwd varchar2(20) NOT NULL,
	-- 회원이름 : 회원이름
	name varchar2(50) NOT NULL,
	-- 성별 : 성별
	gender char NOT NULL,
	-- 메일주소 : 메일주소
	email varchar2(50) NOT NULL,
	-- 휴대번호 : 휴대번호
	phone varchar2(20) NOT NULL,
	-- 자택전화 : 자택전화
	tel varchar2(20),
	-- 기본주소1 : 기본주소1
	addr1_1 varchar2(50),
	-- 상세주소1 : 상세주소1
	addr1_2 varchar2(50),
	-- 우편번호1 : 우편번호(구주소)
	postnum1 varchar2(10),
	-- 신주소2 : 신주소1
	addr2_1 varchar2(50),
	-- 상세주소2 : 상세주소2(신주소)
	addr2_2 varchar2(50),
	-- 우편번호2 : 우편번호2
	postnum2 varchar2(10),
	-- 직업 : 직업
	job varchar2(20),
	-- 생년월일 : 생년월일
	birthday date NOT NULL,
	-- 결혼여부 : 결혼여부
	marry char,
	-- 결혼기념 : 결혼기념일
	mdate date,
	-- 선호지역 : 선호지역
	floc varchar2(50),
	-- 포인트 : 포인트(가감)
	point number,
	-- 메일수신동의 : 메일 수신동의
	agree1 char NOT NULL,
	-- 휴대폰수신동의 : 휴대폰수신동의
	agree2 char NOT NULL,
	PRIMARY KEY (unq)
);


-- 포인트
CREATE TABLE point
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 사용포인트 : 사용포인트
	usepoint number,
	-- 사용일자 : 사용일자
	udate date,
	-- 아이디 : 아이디
	userid varchar2(20) NOT NULL,
	-- 획득방법 : 획득방법
	get char,
	-- 상품명 : 상품제목
	gtitle varchar2(100) NOT NULL,
	PRIMARY KEY (unq)
);


-- 팝업테이블
CREATE TABLE popup
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 제목 : 제목
	title varchar2(100) NOT NULL,
	-- 사용여부 : 사용여부
	use char(1),
	-- 시작일 : 시작일
	sdate date NOT NULL,
	-- 종료일 : 종료일
	edate date NOT NULL,
	-- 가로창크기 : 가로창크기
	xsize number NOT NULL,
	-- 세로창크기 : 세로창크기
	ysize number NOT NULL,
	-- 가로좌표 : 가로좌표
	xpos number NOT NULL,
	-- 세로좌표 : 세로좌표
	ypos number NOT NULL,
	-- 내용 : 내용
	content varchar2(4000) NOT NULL,
	PRIMARY KEY (unq)
);


-- 예약테이블
CREATE TABLE reserv
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 예약번호 : 예약번호
	rsvno varchar2(20) NOT NULL,
	-- 예약일 : 예약등록일자
	rsvdate date NOT NULL,
	-- 성인예약 : 성인예약인원
	rsvanum number NOT NULL,
	-- 어린이예약 : 12세 미만
	rsvcnum number,
	-- 유아예약인원 : 2세미만
	rsvbnum number,
	-- 상품명 : 상품제목
	gtitle varchar2(100) NOT NULL,
	-- 출발일 : 출발일
	sdate date NOT NULL,
	-- 도착일 : 도착일
	edate date NOT NULL,
	-- 항공 : 항공편
	airline varchar2(50) NOT NULL,
	-- 가격 : 상품가격
	price number NOT NULL,
	-- 이름 : 예약자이름
	name varchar2(20) NOT NULL,
	-- 영문명 : 영문명
	ename varchar2(50) NOT NULL,
	-- 생년월일 : 생년월일
	birthday date NOT NULL,
	-- 결제방법 : 결제방법
	payment char(1) NOT NULL,
	-- 처리여부 : 처리여부
	result char(1) NOT NULL,
	-- 취소/환불 : 1.취소여부
	-- 2.환불여부
	cancel char(1),
	PRIMARY KEY (unq)
);


-- 항공권구매
CREATE TABLE ticket
(
	-- 번호 : 번호
	unq number NOT NULL,
	-- 출발지 : 출발지
	sloc varchar2(50) NOT NULL,
	-- 도착지 : 도착지
	eloc varchar2(50) NOT NULL,
	-- 도착일 : 도착일
	edate date NOT NULL,
	-- 출발일 : 출발일
	sdate date NOT NULL,
	-- 성인예약 : 성인예약인원
	rsvanum number NOT NULL,
	-- 유아예약인원 : 2세미만
	rsvbnum number,
	-- 어린이예약 : 12세 미만
	rsvcnum number,
	-- 왕복편도여부 : 왕복편도여부
	return char NOT NULL,
	-- 항공사 : 항공사
	airline varchar2(50) NOT NULL,
	-- 가격 : 가격
	price number NOT NULL,
	-- 요금조건 : 요금조건
	-- 1.학생
	-- 2.성인
	-- 
	people char NOT NULL,
	-- 경유여부 : 경유여부
	route char,
	-- 출발시간 : 출발시간
	stime varchar2(20) NOT NULL,
	-- 도착시간 : 도착시간
	etime varchar2(20) NOT NULL,
	PRIMARY KEY (unq)
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_estimate_unq BEFORE INSERT ON estimate
FOR EACH ROW
BEGIN
	SELECT SEQ_estimate_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_goods_unq BEFORE INSERT ON goods
FOR EACH ROW
BEGIN
	SELECT SEQ_goods_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_member_unq BEFORE INSERT ON member
FOR EACH ROW
BEGIN
	SELECT SEQ_member_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_point_unq BEFORE INSERT ON point
FOR EACH ROW
BEGIN
	SELECT SEQ_point_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_popup_unq BEFORE INSERT ON popup
FOR EACH ROW
BEGIN
	SELECT SEQ_popup_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_reserv_unq BEFORE INSERT ON reserv
FOR EACH ROW
BEGIN
	SELECT SEQ_reserv_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ticket_unq BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
	SELECT SEQ_ticket_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/




/* Comments */

COMMENT ON TABLE company IS '회사정보';
COMMENT ON COLUMN company.cname IS '회사명 : 회사명';
COMMENT ON COLUMN company.addr IS '주소 : 주소';
COMMENT ON COLUMN company.tel IS '전화번호 : 전화번호';
COMMENT ON COLUMN company.email IS '이메일 : 이메일';
COMMENT ON COLUMN company.cnum IS '사업자번호 : 사업자번호';
COMMENT ON TABLE estimate IS '견적테이블';
COMMENT ON COLUMN estimate.unq IS '번호 : 번호';
COMMENT ON COLUMN estimate.type IS '여행타입 : 여행타입';
COMMENT ON COLUMN estimate.email IS '메일주소 : 메일주소';
COMMENT ON COLUMN estimate.name IS '이름 : 예약자이름';
COMMENT ON COLUMN estimate.phone IS '휴대번호 : 휴대번호';
COMMENT ON COLUMN estimate.person IS '인원수 : 예약인원수';
COMMENT ON COLUMN estimate.money IS '가격대 : 원하는 가격대';
COMMENT ON COLUMN estimate.ptime IS '통화가능시간 : 통화가능시간';
COMMENT ON COLUMN estimate.floc IS '선호지역 : 선호지역';
COMMENT ON COLUMN estimate.sdate IS '출발일 : 여행 출발일';
COMMENT ON COLUMN estimate.edate IS '도착일 : 도착일';
COMMENT ON COLUMN estimate.schange IS '출발일변경여부 : 출발일 변경가능여부';
COMMENT ON COLUMN estimate.airline IS '항공 : 항공편';
COMMENT ON COLUMN estimate.stay IS '숙박시설종류 : 숙박시설종류';
COMMENT ON COLUMN estimate.stayname IS '숙박지명 : 숙박지명';
COMMENT ON COLUMN estimate.req IS '고객요청사항 : 고객요청사항';
COMMENT ON COLUMN estimate.rdate IS '등록일 : 등록일';
COMMENT ON COLUMN estimate.result IS '처리여부 : 처리여부';
COMMENT ON COLUMN estimate.manager IS '담당자 : 담당자';
COMMENT ON TABLE goods IS '상품테이블';
COMMENT ON COLUMN goods.unq IS '번호 : 번호';
COMMENT ON COLUMN goods.title IS '여행상품명 : 여행상품명';
COMMENT ON COLUMN goods.gubun IS '큰구분 상품카테고리 : 상품구분 큰 카테고리';
COMMENT ON COLUMN goods.nation IS '국가 : 여행국가';
COMMENT ON COLUMN goods.city IS '도시 : 여행도시';
COMMENT ON COLUMN goods.price IS '상품가격 : 상품가격';
COMMENT ON COLUMN goods.sdate IS '출발일 : 여행 출발일';
COMMENT ON COLUMN goods.edate IS '도착일 : 여행도착일';
COMMENT ON COLUMN goods.period IS '여행기간 : 1박2일, 2박4일 select 박스 이용 2개- DB값은 1개로';
COMMENT ON COLUMN goods.schd IS '간략일정 : 인천-보라카이-인천';
COMMENT ON COLUMN goods.detail1 IS '상품상세정보 : 상품상세정보 1 : 예약유의사항, 상품안내,포함사항,불포함사항, 옵션, 참고/전달, 일정표, 관광지 정보';
COMMENT ON COLUMN goods.detail2 IS '상세정보2 : 필수사항, 보험, 약관, 여권/비자, 입금계좌, 유의사항, 쇼핑안내';
COMMENT ON COLUMN goods.airline IS '이용항공 : 대한항공/아시아나';
COMMENT ON COLUMN goods.person IS '인원수 : 예약인원수';
COMMENT ON COLUMN goods.code IS '상품번호 : 상품번호 CH.....';
COMMENT ON TABLE member IS '회원테이블';
COMMENT ON COLUMN member.unq IS '번호 : 번호';
COMMENT ON COLUMN member.id IS '회원아이디 : 회원아이디';
COMMENT ON COLUMN member.pwd IS '패스워드 : 회원비밀번호 : 암호화(복호화) 가능한지 확인할 것.';
COMMENT ON COLUMN member.name IS '회원이름 : 회원이름';
COMMENT ON COLUMN member.gender IS '성별 : 성별';
COMMENT ON COLUMN member.email IS '메일주소 : 메일주소';
COMMENT ON COLUMN member.phone IS '휴대번호 : 휴대번호';
COMMENT ON COLUMN member.tel IS '자택전화 : 자택전화';
COMMENT ON COLUMN member.addr1_1 IS '기본주소1 : 기본주소1';
COMMENT ON COLUMN member.addr1_2 IS '상세주소1 : 상세주소1';
COMMENT ON COLUMN member.postnum1 IS '우편번호1 : 우편번호(구주소)';
COMMENT ON COLUMN member.addr2_1 IS '신주소2 : 신주소1';
COMMENT ON COLUMN member.addr2_2 IS '상세주소2 : 상세주소2(신주소)';
COMMENT ON COLUMN member.postnum2 IS '우편번호2 : 우편번호2';
COMMENT ON COLUMN member.job IS '직업 : 직업';
COMMENT ON COLUMN member.birthday IS '생년월일 : 생년월일';
COMMENT ON COLUMN member.marry IS '결혼여부 : 결혼여부';
COMMENT ON COLUMN member.mdate IS '결혼기념 : 결혼기념일';
COMMENT ON COLUMN member.floc IS '선호지역 : 선호지역';
COMMENT ON COLUMN member.point IS '포인트 : 포인트(가감)';
COMMENT ON COLUMN member.agree1 IS '메일수신동의 : 메일 수신동의';
COMMENT ON COLUMN member.agree2 IS '휴대폰수신동의 : 휴대폰수신동의';
COMMENT ON TABLE point IS '포인트';
COMMENT ON COLUMN point.unq IS '번호 : 번호';
COMMENT ON COLUMN point.usepoint IS '사용포인트 : 사용포인트';
COMMENT ON COLUMN point.udate IS '사용일자 : 사용일자';
COMMENT ON COLUMN point.userid IS '아이디 : 아이디';
COMMENT ON COLUMN point.get IS '획득방법 : 획득방법';
COMMENT ON COLUMN point.gtitle IS '상품명 : 상품제목';
COMMENT ON TABLE popup IS '팝업테이블';
COMMENT ON COLUMN popup.unq IS '번호 : 번호';
COMMENT ON COLUMN popup.title IS '제목 : 제목';
COMMENT ON COLUMN popup.use IS '사용여부 : 사용여부';
COMMENT ON COLUMN popup.sdate IS '시작일 : 시작일';
COMMENT ON COLUMN popup.edate IS '종료일 : 종료일';
COMMENT ON COLUMN popup.xsize IS '가로창크기 : 가로창크기';
COMMENT ON COLUMN popup.ysize IS '세로창크기 : 세로창크기';
COMMENT ON COLUMN popup.xpos IS '가로좌표 : 가로좌표';
COMMENT ON COLUMN popup.ypos IS '세로좌표 : 세로좌표';
COMMENT ON COLUMN popup.content IS '내용 : 내용';
COMMENT ON TABLE reserv IS '예약테이블';
COMMENT ON COLUMN reserv.unq IS '번호 : 번호';
COMMENT ON COLUMN reserv.rsvno IS '예약번호 : 예약번호';
COMMENT ON COLUMN reserv.rsvdate IS '예약일 : 예약등록일자';
COMMENT ON COLUMN reserv.rsvanum IS '성인예약 : 성인예약인원';
COMMENT ON COLUMN reserv.rsvcnum IS '어린이예약 : 12세 미만';
COMMENT ON COLUMN reserv.rsvbnum IS '유아예약인원 : 2세미만';
COMMENT ON COLUMN reserv.gtitle IS '상품명 : 상품제목';
COMMENT ON COLUMN reserv.sdate IS '출발일 : 출발일';
COMMENT ON COLUMN reserv.edate IS '도착일 : 도착일';
COMMENT ON COLUMN reserv.airline IS '항공 : 항공편';
COMMENT ON COLUMN reserv.price IS '가격 : 상품가격';
COMMENT ON COLUMN reserv.name IS '이름 : 예약자이름';
COMMENT ON COLUMN reserv.ename IS '영문명 : 영문명';
COMMENT ON COLUMN reserv.birthday IS '생년월일 : 생년월일';
COMMENT ON COLUMN reserv.payment IS '결제방법 : 결제방법';
COMMENT ON COLUMN reserv.result IS '처리여부 : 처리여부';
COMMENT ON COLUMN reserv.cancel IS '취소/환불 : 1.취소여부
2.환불여부';
COMMENT ON TABLE ticket IS '항공권구매';
COMMENT ON COLUMN ticket.unq IS '번호 : 번호';
COMMENT ON COLUMN ticket.sloc IS '출발지 : 출발지';
COMMENT ON COLUMN ticket.eloc IS '도착지 : 도착지';
COMMENT ON COLUMN ticket.edate IS '도착일 : 도착일';
COMMENT ON COLUMN ticket.sdate IS '출발일 : 출발일';
COMMENT ON COLUMN ticket.rsvanum IS '성인예약 : 성인예약인원';
COMMENT ON COLUMN ticket.rsvbnum IS '유아예약인원 : 2세미만';
COMMENT ON COLUMN ticket.rsvcnum IS '어린이예약 : 12세 미만';
COMMENT ON COLUMN ticket.return IS '왕복편도여부 : 왕복편도여부';
COMMENT ON COLUMN ticket.airline IS '항공사 : 항공사';
COMMENT ON COLUMN ticket.price IS '가격 : 가격';
COMMENT ON COLUMN ticket.people IS '요금조건 : 요금조건
1.학생
2.성인
';
COMMENT ON COLUMN ticket.route IS '경유여부 : 경유여부';
COMMENT ON COLUMN ticket.stime IS '출발시간 : 출발시간';
COMMENT ON COLUMN ticket.etime IS '도착시간 : 도착시간';



