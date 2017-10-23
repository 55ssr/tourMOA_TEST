-- 담당자 테이블 생성 - 강
CREATE TABLE manager
(
	code varchar2(20),
	name varchar2(20),
	phone varchar2(20),
	mail varchar2(20),
	img varchar2(20)
);

-- 담당자 등록 - 강
INSERT INTO manager (code, name, phone, mail, img) VALUES ('westeu','공유','010-1111-1111','zeroU@mail.com','img01.jpg')
