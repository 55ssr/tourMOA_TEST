-- 테이블 삭제 - 강
DROP TABLE slider;
-- 테이블 생성 - 강
CREATE TABLE slider 
(
	code varchar2(20),
	name varchar2(20),
	filename varchar2(4000),
	PRIMARY KEY (code)
);
INSERT INTO slider VALUES ('italy', '이탈리아', 'img01.jpg');
INSERT INTO slider VALUES ('italy', '이탈리아', 'img02.jpg');
INSERT INTO slider VALUES ('italy', '이탈리아', 'img03.jpg');
INSERT INTO slider VALUES ('italy', '이탈리아', 'img04.jpg');
INSERT INTO slider VALUES ('italy', '이탈리아', 'img05.jpg');
-- 데이터 추가 - 강
INSERT INTO slider VALUES ('italy','이탈리아','img01.jpg／img02.jpg／img03.jpg／img04.jpg／img05.jpg');