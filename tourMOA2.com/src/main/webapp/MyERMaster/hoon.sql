
-- 공지사항 테이블 생성
CREATE TABLE notice
(
	unq number NOT NULL,
	gubun varchar2(50) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(4000) NOT NULL,
	hit number NOT NULL,
	rdate timestamp(6) NOT NULL,
	upddate timestamp(6),
	allview char(1) NOT NULL,
	PRIMARY KEY (unq)
);

-- all_view을 보여주고 타입은 char 또 not null로 지정한다.
--ALTER TABLE SCOTT.NOTICE ADD (ALL_VIEW  CHAR(1) NOT NULL); 

DROP SEQUENCE SEQ_notice_unq;
CREATE SEQUENCE SEQ_notice_unq INCREMENT BY 1 START WITH 1;


ALTER TABLE SCOTT.NOTICE RENAME COLUMN ALL_VIEW TO ALLVIEW;