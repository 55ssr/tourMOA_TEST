
DROP TABLE company CASCADE CONSTRAINTS;
DROP TABLE estimate CASCADE CONSTRAINTS;
DROP TABLE goods CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE point CASCADE CONSTRAINTS;
DROP TABLE popup CASCADE CONSTRAINTS;
DROP TABLE reserv CASCADE CONSTRAINTS;
DROP TABLE ticket CASCADE CONSTRAINTS;




DROP SEQUENCE SEQ_estimate_unq;
DROP SEQUENCE SEQ_goods_unq;
DROP SEQUENCE SEQ_member_unq;
DROP SEQUENCE SEQ_point_unq;
DROP SEQUENCE SEQ_popup_unq;
DROP SEQUENCE SEQ_reserv_unq;
DROP SEQUENCE SEQ_ticket_unq;




CREATE SEQUENCE SEQ_estimate_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_goods_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_member_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_point_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_popup_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reserv_unq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ticket_unq INCREMENT BY 1 START WITH 1;



CREATE TABLE company
(
	cname varchar2(20) NOT NULL,
	addr varchar2(100),
	tel varchar2(20) NOT NULL,
	email varchar2(50) NOT NULL,
	cnum varchar2(30)
);


CREATE TABLE estimate
(
	unq number NOT NULL,
	type varchar2(20) NOT NULL,
	email varchar2(50) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	person number NOT NULL,
	money varchar2(50) NOT NULL,
	ptime varchar2(50) NOT NULL,
	floc varchar2(50) NOT NULL,
	sdate date NOT NULL,
	edate date,
	schange char(1) NOT NULL,
	airline varchar2(50),
	stay char(1) NOT NULL,
	stayname varchar2(50) NOT NULL,
	req varchar2(1000),
	rdate date NOT NULL,
	result char(1),
	manager varchar2(50),
	PRIMARY KEY (unq)
);


CREATE TABLE goods
(
	unq number NOT NULL,
	title varchar2(100),
	gubun varchar2(20),
	nation varchar2(20),
	city varchar2(20),
	price number,
	sdate date,
	edate date,
	period varchar2(20),
	schd varchar2(50),
	detail1 varchar2(4000),
	detail2 varchar2(4000),
	airline varchar2(50),
	person number,
	code varchar2(50),
	PRIMARY KEY (unq)
);


CREATE TABLE member
(
	unq number NOT NULL,
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(50) NOT NULL,
	gender char NOT NULL,
	email varchar2(50) NOT NULL,
	phone varchar2(20) NOT NULL,
	tel varchar2(20),
	addr1_1 varchar2(50),
	addr1_2 varchar2(50),
	postnum1 varchar2(10),
	addr2_1 varchar2(50),
	addr2_2 varchar2(50),
	postnum2 varchar2(10),
	job varchar2(20),
	birthday date NOT NULL,
	marry char,
	mdate date,
	floc varchar2(50),
	point number,
	agree1 char NOT NULL,
	agree2 char NOT NULL,
	PRIMARY KEY (unq)
);

CREATE TABLE point
(
	unq number NOT NULL,
	usepoint number,
	udate date,
	userid varchar2(20) NOT NULL,
	get char,
	gtitle varchar2(100) NOT NULL,
	PRIMARY KEY (unq)
);


CREATE TABLE popup
(
	unq number NOT NULL,
	title varchar2(100) NOT NULL,
	use char(1),
	sdate date NOT NULL,
	edate date NOT NULL,
	xsize number NOT NULL,
	ysize number NOT NULL,
	xpos number NOT NULL,
	ypos number NOT NULL,
	content varchar2(4000) NOT NULL,
	PRIMARY KEY (unq)
);


CREATE TABLE reserv
(
	unq number NOT NULL,
	rsvno varchar2(20) NOT NULL,
	rsvdate date NOT NULL,
	rsvanum number NOT NULL,
	rsvcnum number,
	rsvbnum number,
	gtitle varchar2(100) NOT NULL,
	sdate date NOT NULL,
	edate date NOT NULL,
	airline varchar2(50) NOT NULL,
	price number NOT NULL,
	name varchar2(20) NOT NULL,
	ename varchar2(50) NOT NULL,
	birthday date NOT NULL,
	payment char(1) NOT NULL,
	result char(1) NOT NULL,
	cancel char(1),
	PRIMARY KEY (unq)
);


CREATE TABLE ticket
(
	unq number NOT NULL,
	sloc varchar2(50) NOT NULL,
	eloc varchar2(50) NOT NULL,
	edate date NOT NULL,
	sdate date NOT NULL,
	rsvanum number NOT NULL,
	rsvbnum number,
	rsvcnum number,
	return char NOT NULL,
	airline varchar2(50) NOT NULL,
	price number NOT NULL,
	people char NOT NULL,
	route char,
	stime varchar2(20) NOT NULL,
	etime varchar2(20) NOT NULL,
	PRIMARY KEY (unq)
);

CREATE TABLE NOTICE
(
  UNQ       NUMBER                              NOT NULL,
  GUBUN     VARCHAR2(50 BYTE)                   NOT NULL,
  TITLE     VARCHAR2(100 BYTE)                  NOT NULL,
  CONTENT   VARCHAR2(4000 BYTE)                 NOT NULL,
  HIT       NUMBER                              NOT NULL,
  RDATE     TIMESTAMP(6)                        NOT NULL,
  UPDDATE   TIMESTAMP(6),
  ALL_VIEW  CHAR(1 BYTE)                        NOT NULL
);
	-- goods 테이블 지역 추가
	ALTER TABLE goods ADD(location varchar2(20)); --varchar2
	-- goods 테이블 아동가 추가
	ALTER TABLE goods ADD(pricech number);
	-- goods 테이블 유아가 추가
	ALTER TABLE goods ADD(pricein number);
	-- goods 테이블 "1박" 추가
	ALTER TABLE goods ADD(period1 varchar2(20));
	-- goods 테이블 "2일" 추가
	ALTER TABLE goods ADD(period2 varchar2(20));
	-- goods 테이블 경유여부 추가
	ALTER TABLE goods ADD(via char(1));
	-- goods 테이블 경유지들 추가
	ALTER TABLE goods ADD(vias varchar2(50)); --varchar2
	-- goods 테이블 사용여부 추가
	ALTER TABLE goods ADD(use char(1));
	-- goods 테이블 rdate 추가
	ALTER TABLE goods ADD(rdate timestamp); -- add
	-- city 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (city varchar(100))
	
	-- member 테이블 addr1_1, 1_2 바이트 수 증가
	ALTER TABLE member MODIFY (addr1_1 varchar(100))
	ALTER TABLE member MODIFY (addr1_2 varchar(100))

	-- goods 테이블 title 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (title varchar(300))
	-- goods 테이블 schd 컬럼 바이트 수 증가
	ALTER TABLE goods MODIFY (schd varchar(300))
	-- goods 테이블 썸네일 추가
	ALTER TABLE goods ADD(images01 varchar(20))
	ALTER TABLE goods ADD(images02 varchar(20))
	ALTER TABLE goods ADD(images03 varchar(20))
	-- goods 테이블 편명 추가
	ALTER TABLE goods ADD(fno varchar(20))
	-- goods 테이블 현지도착시간 추가
	ALTER TABLE goods ADD(sadate date)
	-- goods 테이블 한국도착시간 추가
	ALTER TABLE goods ADD(eadate date)
	-- goods 테이블 남은 좌석 추가
	ALTER TABLE goods ADD(rem number)
	-- goods 테이블 최소 출발 인원 추가
	ALTER TABLE goods ADD(minp number)
	-- goods 테이블 유류할증료 추가
	ALTER TABLE goods ADD(fuel number)
	
	-- goods 테이블 데이터 추가
	INSERT INTO goods (	unq,title,gubun,location,nation,city,price,pricech,pricein,fuel,sdate,sadate,edate,eadate,period,period1,period2,via,vias,use,schd,dinfo,incinfo,nincinfo,ref,detail1,detail2,airline,person,rem,minp,code,images01,images02,images03,fno,rdate) 
		VALUES (SEQ_goods_unq.nextval,
				'[한폭의그림 이태리] 친퀘테레/오르비에또+로마아울렛포함 이태리완전일주 8일',
				'해외패키지',
				'서유럽',
				'이탈리아',
				'로마,피렌체,베니스,베로나,몬테카티니,친퀘테레,피사,나폼쏘',
				'1390000',
				'1390000',
				'500000',
				'85000',
				'2017-10-13', --수
				'2017-10-13', --정
				'2017-11-19', --요
				'2017-11-19', --함
				'8박 10일',
				'8',
				'10',
				'N',
				'',
				'Y',
				'인천-로마-피렌체-베니스-베로나-몬테카티니-친퀘테레-피사-로마-나폼쏘-인천',
				'상품안내(수정요)',
				'포함사항',
				'불포함사항',
				'참고사항',
				'이탈리아 항공 로마직항 초특가 상품!<br />이탈리아 주요도시 로마부터 국제적인 수상도시 베니스 등 중세시대의 문화를 아우르는 낭만 가득한 이태리여행! 완벽한 하나의 일정으로 진행되는 출발확정이 높은 상품입니다!',
				'이탈리아 항공 로마직항 초특가 상품!<br />이탈리아 주요도시 로마부터 국제적인 수상도시 베니스 등 중세시대의 문화를 아우르는 낭만 가득한 이태리여행! 완벽한 하나의 일정으로 진행되는 출발확정이 높은 상품입니다!',
				'알리탈리아항공',
				'20',
				'4',
				'10',
				'2017IT',
				'images01.PNG',
				'images02.PNG',
				'images03.PNG',
				'AZ759',
				sysdate
				)
				
	select * from goods
	TRUNCATE TABLE goods
	
	drop table nation
	TRUNCATE TABLE nation
	
	-- nation 테이블 생성
	CREATE TABLE nation 
	(
		eng varchar2(20),
		kor varchar2(20),
		imgsm varchar2(50),
		imglg varchar2(50)
	);
	
	-- 국가별 슬라이더 이미지 데이터 등록
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm01.jpg','img_lg01.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm02.jpg','img_lg02.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm03.jpg','img_lg03.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm04.jpg','img_lg04.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm05.jpg','img_lg05.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('italy','이탈리아','img_sm06.jpg','img_lg06.jpg');
	INSERT INTO nation (eng, kor, imgsm, imglg) VALUES ('spain','스페인','img_sp01.jpg','img_sp01.jpg');
	
	
	-- goods 테이블 상품안내 추가
	
	ALTER TABLE goods ADD(dinfo varchar2(4000));
	ALTER TABLE goods ADD(incinfo varchar2(4000));
	ALTER TABLE goods ADD(nincinfo varchar2(4000));	
	ALTER TABLE goods ADD(ref varchar2(4000));	
	
	
	-- 담당자 테이블 생성
	CREATE TABLE manager
	(
		code varchar2(20),
		name varchar2(20),
		phone varchar2(20),
		mail varchar2(20),
		img varchar2(20)
	);
	
	-- 담당자 등록
	INSERT INTO manager (code, name, phone, mail, img) VALUES ('eu','공유','010-1111-1111','zeroU@mail.com','img01.jpg')
	