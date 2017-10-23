-- 카테고리 테이블 --
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

-- 견적 테이블 --
-- 기존 estimate table을 만들지 않았을 경우에만 사용할 것~!!!
CREATE TABLE estimate
(
	unq number NOT NULL, -- 번호
	title varchar2(200) NOT NULL, -- 제목	
	name varchar2(20) NOT NULL, -- 이름
	userid varchar2(20), -- 고객아이디
	phone varchar2(20) NOT NULL, -- 휴대번호
	email varchar2(50) NOT NULL, -- 메일주소
	person number NOT NULL, -- 인원수	
	type varchar2(20) NOT NULL, -- 여행타입
	money varchar2(50) NOT NULL, -- 여행가격	
	floc varchar2(50) NOT NULL, -- 선호지역
	city varchar2(100) NOT NULL, -- 선호도시
	sdate date, -- 출발일자
	edate date, -- 도착일자
	schange char(1), -- 출발일 변경가능 여부
	airline varchar2(50), -- 선호 항공사
	passage char(1), -- 경유지 가능여부
	stay varchar2(100) NOT NULL, -- 숙박시설 종류선택
	stayname varchar2(50) NOT NULL, -- 숙박지명
	req varchar2(1000), -- 고객요청사항	
	ptime varchar2(50) NOT NULL, -- 통화가능시간
	rdate date, -- 등록일자
	result char(1), -- 처리결과
	reply varchar2(2000) NOT NULL -- 처리내용
	manager varchar2(50), -- 처리 담당자
	PRIMARY KEY (unq)
);

-- 기존 estmate table이 있는 경우에는 아래쪽 ALTER table을 이용할 것~!!!
ALTER TABLE SCOTT.ESTIMATE MODIFY(SDATE NULL); -- 출발일짜 datetype은 NOT NULL처리 하지 않음.
ALTER TABLE SCOTT.ESTIMATE ADD (TITLE VARCHAR2(200) NOT NULL); -- 제목부분 추가
ALTER TABLE SCOTT.ESTIMATE ADD (USERID VARCHAR2(20)); -- 고객아이디 받는 부분(비회원 가능으로 NULL처리)
ALTER TABLE SCOTT.ESTIMATE ADD (CITY VARCHAR2(100) NOT NULL); -- 선호도시 선택
ALTER TABLE SCOTT.ESTIMATE MODIFY(SCHANGE NULL); -- 출발일 변경가능여부(가능여부 선택은 NULL처리)
ALTER TABLE SCOTT.ESTIMATE ADD (PASSAGE CHAR(1)); -- 경유지 가능여부
ALTER TABLE SCOTT.ESTIMATE MODIFY(STAY VARCHAR2(100) NOT NULL); -- 숙박시설 종류 선택 type변경 및 text형식으로 받음.
ALTER TABLE SCOTT.ESTIMATE MODIFY(RDATE NULL); -- date타입은 NULL처리
ALTER TABLE SCOTT.ESTIMATE MODIFY(REPLY  NULL); -- 관리자가 답변을 달아야 함으로 NULL 처리
ALTER TABLE SCOTT.ESTIMATE ADD (inEstimateAgree  CHAR(1) NOT NULL); -- 개인정보 확용동의란 채크
ALTER TABLE SCOTT.ESTIMATE MODIFY(MONEY NUMBER); -- 여행가격 type 변경 varchar2 -> number
ALTER TABLE SCOTT.ESTIMATE ADD (redate  DATE); -- 견적처리 등록일자 추가 (고객이 처음 등록했을 때는 처리일자가 필요없으므로 NULL처리
ALTER TABLE SCOTT.ESTIMATE MODIFY(SDATE VARCHAR2(50)); -- DATE타입에서 VARCHAR2형식으로 변경
ALTER TABLE SCOTT.ESTIMATE MODIFY(EDATE VARCHAR2(50)); -- DATE타입에서 VARCHAR2형식으로 변경
ALTER TABLE SCOTT.ESTIMATE DROP COLUMN TYPE; -- 변경된 견적서에는 type컬럼이 필요없으므로 삭제처리
ALTER TABLE SCOTT.ESTIMATE MODIFY(SCHANGE VARCHAR2(50 BYTE)); -- 출발일 변경가능 여부인데, String으로 받는 것이 유리할 것 같아 변경처리
ALTER TABLE SCOTT.ESTIMATE MODIFY(STAY VARCHAR2(200 BYTE)); -- 숙박시설 종류를 TEXT형식으로 받아야 하므로 VARCHAR형식으로 변환
ALTER TABLE SCOTT.ESTIMATE ADD (stayOther VARCHAR2(50)); -- 고객이 원하는 숙박시설을 받는 경우도 있기 때문에 추가
ALTER TABLE SCOTT.ESTIMATE MODIFY(STAYNAME  NULL); --숙박시설이름을 입력하지 않는 경우도 있으므로 기본값은 NULL로 해야함
ALTER TABLE SCOTT.ESTIMATE MODIFY(MONEY VARCHAR2(200)); -- 여행가격 다시 VARCHAR2로 변경
ALTER TABLE SCOTT.ESTIMATE MODIFY(NAME VARCHAR2(100 BYTE)); -- 단체명의 경우 길기 때문에 100으로 변경
