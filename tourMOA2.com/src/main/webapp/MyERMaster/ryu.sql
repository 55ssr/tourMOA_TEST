ALTER TABLE MEMBER ADD emailYn char(1);
ALTER TABLE MEMBER ADD mobileRcpYn char(1);

ALTER TABLE MEMBER drop column addr1_1;
ALTER TABLE MEMBER drop column addr1_2;
ALTER TABLE MEMBER drop column addr2_1;
ALTER TABLE MEMBER drop column addr2_2;

alter table member add(addr11 CLOB);
alter table member add(addr12 CLOB);
alter table member add(addr21 CLOB);
alter table member add(addr22 CLOB);
