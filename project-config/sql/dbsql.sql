drop table member;
drop sequence member_no_seq;

CREATE TABLE member
( 
mid		VARCHAR2(30),	
mname      VARCHAR2(30),
mpassword  VARCHAR2(30)
) ;

ALTER TABLE member
ADD ( CONSTRAINT member_no_pk PRIMARY KEY ( mid ) );

CREATE TABLE accountDetail
(
aid  NUMBER(30),
atitle VARCHAR2(80),
acontent VARCHAR2(2000),
aincome NUMBER(30),
aoutcome NUMBER(30),
adate date,
amoney NUMBER(30)
);

ALTER TABLE accountDetail
ADD ( CONSTRAINT accountDetail_no_pk PRIMARY KEY ( aid ) );

CREATE SEQUENCE accountDetail_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;



CREATE TABLE accountBook
(
aid  NUMBER(30),
atitle VARCHAR2(80),
atotalmoney NUMBER(30),
aincome NUMBER(30),
aoutcome NUMBER(30)
);

ALTER TABLE accountBook
ADD ( CONSTRAINT accountBook_no_pk PRIMARY KEY ( aid ) );

CREATE SEQUENCE accountBook_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;



CREATE TABLE management
( 
mid		VARCHAR2(30),	
aid      NUMBER(30),
atitle  VARCHAR2(80)
) ;

ALTER TABLE management
ADD ( CONSTRAINT management_no_pk PRIMARY KEY ( mid ) );
