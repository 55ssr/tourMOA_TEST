

/* Create Sequences */

CREATE SEQUENCE SEQ_member_unq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE member
(
	-- 번호
	unq number NOT NULL,
	-- 회원아이디
	id varchar2(20) NOT NULL,
	-- 회원비밀번호 : 암호화(복호화) 가능한지 확인할 것.
	pwd varchar2(20) NOT NULL,
	-- 회원이름
	name varchar2(50) NOT NULL,
	-- 성별
	gender char NOT NULL,
	-- 메일주소
	email varchar2(50) NOT NULL,
	-- 휴대번호
	phone varchar2(20) NOT NULL,
	-- 자택전화
	tel varchar2(20),
	-- 기본주소1
	addr1_1 varchar2(50),
	-- 상세주소1
	addr1_2 varchar2(50),
	-- 우편번호(구주소)
	postnum1 varchar2(10),
	-- 신주소1
	addr2_1 varchar2(50),
	-- 상세주소2(신주소)
	addr2_2 varchar2(50),
	-- 우편번호2
	postnum2 varchar2(10),
	-- 직업
	job varchar2(20),
	-- 생년월일
	birthday date NOT NULL,
	-- 결혼여부
	marry char,
	-- 결혼기념일
	mdate date,
	-- 선호지역
	floc varchar2(50),
	-- 포인트(가감)
	point number,
	-- 메일 수신동의
	agree1 char NOT NULL,
	-- 휴대폰수신동의
	agree2 char NOT NULL,
	PRIMARY KEY (unq)
);



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_member_unq BEFORE INSERT ON member
FOR EACH ROW
BEGIN
	SELECT SEQ_member_unq.nextval
	INTO :new.unq
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN member.unq IS '번호';
COMMENT ON COLUMN member.id IS '회원아이디';
COMMENT ON COLUMN member.pwd IS '회원비밀번호 : 암호화(복호화) 가능한지 확인할 것.';
COMMENT ON COLUMN member.name IS '회원이름';
COMMENT ON COLUMN member.gender IS '성별';
COMMENT ON COLUMN member.email IS '메일주소';
COMMENT ON COLUMN member.phone IS '휴대번호';
COMMENT ON COLUMN member.tel IS '자택전화';
COMMENT ON COLUMN member.addr1_1 IS '기본주소1';
COMMENT ON COLUMN member.addr1_2 IS '상세주소1';
COMMENT ON COLUMN member.postnum1 IS '우편번호(구주소)';
COMMENT ON COLUMN member.addr2_1 IS '신주소1';
COMMENT ON COLUMN member.addr2_2 IS '상세주소2(신주소)';
COMMENT ON COLUMN member.postnum2 IS '우편번호2';
COMMENT ON COLUMN member.job IS '직업';
COMMENT ON COLUMN member.birthday IS '생년월일';
COMMENT ON COLUMN member.marry IS '결혼여부';
COMMENT ON COLUMN member.mdate IS '결혼기념일';
COMMENT ON COLUMN member.floc IS '선호지역';
COMMENT ON COLUMN member.point IS '포인트(가감)';
COMMENT ON COLUMN member.agree1 IS '메일 수신동의';
COMMENT ON COLUMN member.agree2 IS '휴대폰수신동의';



