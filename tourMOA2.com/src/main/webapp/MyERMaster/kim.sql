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