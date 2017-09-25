

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




