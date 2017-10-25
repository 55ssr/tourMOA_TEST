-- 옵션 테이블 생성전 드랍 - 강
DROP TABLE opt CASCADE CONSTRAINTS;
-- 옵션 시퀀스 생성전 드랍 - 강
DROP SEQUENCE SEQ_option_unq;
-- 옵션 시퀀스 생성 - 강
CREATE SEQUENCE SEQ_option_unq INCREMENT BY 1 START WITH 1;
-- 옵션 테이블 생성 - 강
CREATE TABLE opt
(
	unq number NOT NULL, 
	code varchar2(20),
	title varchar2(30),
	filename varchar2(1000),
	rtime varchar2(20),
	pay varchar2(20),
	expl varchar2(500),
	PRIMARY KEY (unq)
);

-- 옵션 테이블 데이터 생성 unq 임시 작성 - 강
INSERT INTO opt (unq, code, title, filename, rtime, pay, expl) VALUES (SEQ_option_unq.nextval,'italy','베니스 곤돌라','gon.jpg','약 30분 소요','€50','- 진행방법 : 베니스의 명물 곤돌라에 탑승하여 베니스 본섬 물길따라 관광합니다.<br>- 미참가시 : 주변 자유관광 합니다. (인솔자/가이드 미동행)');
INSERT INTO opt (unq, code, title, filename, rtime, pay, expl) VALUES (SEQ_option_unq.nextval,'italy','베니스 수상택시','taxi.jpg','약 40분 소요','€50','- 진행방법 : 수상택시를 탑승하여 베니스 본섬의 S자 대운하를 관광합니다.<br>- 미참가시 : 일반 배로 본토로 이동합니다. (인솔자 동행)');
INSERT INTO opt (unq, code, title, filename, rtime, pay, expl) VALUES (SEQ_option_unq.nextval,'italy','로마 미니밴투어','van.jpg','약 3시간 소요','€60','- 진행방법 : 바티칸시국을 제외한 모든 관광지를 미니밴으로 이동합니다.<br>- 미참가시 : 기존일정대로 도보로 로마 관광합니다. (인솔자 동행)');
INSERT INTO opt (unq, code, title, filename, rtime, pay, expl) VALUES (SEQ_option_unq.nextval,'italy','카프리섬 투어','cafri.JPG','약 4시간 소요','€120','- 진행방법 : 카프리섬으로 들어가 카프리섬관광 진행합니다.<br>- 미참가시 : 미 참여자분들은 주변 자유 관광합니다.(인솔자 미동행)');		
INSERT INTO opt (unq, code, title, filename, rtime, pay, expl) VALUES (SEQ_option_unq.nextval,'italy','렌트카','rent.jpg','24시간','€100','- 진행방법 : 카프리섬으로 들어가 카프리섬관광 진행합니다.<br>- 미참가시 : 미 참여자분들은 주변 자유 관광합니다.(인솔자 미동행)');
