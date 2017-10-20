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
-- member 테이블 rdate 추가
ALTER TABLE member ADD(rdate timestamp); -- add

-- reserv 테이블 email추가
ALTER TABLE reserv ADD(email varchar2(50)); -- add
-- reserv 테이블 phone추가
ALTER TABLE reserv ADD(phone varchar2(20)); -- add
-- reserv 테이블 tel추가
ALTER TABLE reserv ADD(tel varchar2(50)); -- add
-- reserv 테이블 period추가
ALTER TABLE reserv ADD(period varchar2(50)); -- add
-- reserv 테이블 gender추가
ALTER TABLE reserv ADD(gender char(1)); -- add
-- reserv 테이블 code추가
ALTER TABLE reserv ADD(code varchar2(50)); -- add