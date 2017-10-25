DROP TABLE comm CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_comm_unq;

CREATE SEQUENCE SEQ_comm_unq INCREMENT BY 1 START WITH 1;

CREATE TABLE comm
(
	unq number NOT NULL,
	gubun varchar2(20),
	gtitle varchar2(1000),
	ctitle varchar2(1000),
	author varchar2(50),
	content varchar2(4000),
	rdate date,
	pid number,
	CONSTRAINT unq_fk FOREIGN KEY(pid) REFERENCES goods(unq)
);

INSERT INTO comm VALUES (SEQ_comm_unq.nextval,
						 'pkg',
						 'gtitle',
						 'ctitle',
						 'author',
						 'content',
						 sysdate,
						 '2'
						)