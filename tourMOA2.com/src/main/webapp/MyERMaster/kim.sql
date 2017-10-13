CREATE TABLE category (
   ctgcd VARCHAR2(20)  NOT  NULL PRIMARY  KEY, -- 카테고리코드
   ctgnm VARCHAR2(50)  NOT  NULL, -- 카테고리명
   comm VARCHAR2(1000), -- 카테고리 코멘트
   use CHAR(1), -- 카테고리 사용여부
   regdate TIMESTAMP, -- 카테고리 등록일
   upddate TIMESTAMP, -- 카테고리 업데이트일
   hctgcd VARCHAR2(20) NOT NULL,        -- 상위 레벨 코드, 최 상위 레벨에는 0으로 채움
   CONSTRAINT use_ck CHECK(use='Y' or use='N')
);

ALTER TABLE SCOTT.CATEGORY MODIFY(CTGNM VARCHAR2(100 BYTE)); -- 카테고리명 단위부족으로 수치 변경

ALTER TABLE SCOTT.CATEGORY MODIFY(CTGNM VARCHAR2(150 BYTE)); -- 카테고리명 단위부족으로 수치 변경
