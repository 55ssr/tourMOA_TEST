-- member 테이블 addr1_1, 1_2 바이트 수 증가 - 강
ALTER TABLE member MODIFY (addr1_1 varchar(100))
ALTER TABLE member MODIFY (addr1_2 varchar(100))
