

DROP TABLE DEPT_COPY;
COMMIT;


DESC dept_copy;


CREATE TABLE DETP_COPY

AS
SELECT *
FROM department;

ROLLBACK;


CREATE TABLE DEPT_COPY
AS
SELECT *
FROM department;


--ROLLBACK �����ϱ� 

DELETE dept_copy;

SELECT *
FROM dept_copy;

ROLLBACK;


SELECT *
FROM dept_copy;

--PRIMARY KEY �����ϱ� 
DROP TABLE dept_second;

COMMIT;

DESC DEPT_THIRD;

DROP TABLE DEPT_THIRD;

COMMIT;

CREATE TABLE DEPT_THIRD(
    dno     NUMBER(2),  
    dname   VARCHAR2(14),
    LOC     VARCHAR2(13),
    CONSTRAINT pk_dept_third PRIMARY KEY(dno)  
);
COMMIT;

--NOT NULL ����ϱ� 

CREATE TABLE CUSTOMER(
    id          VARCHAR2(20)    NOT NULL,
    pwd         VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100) 

);

COMMIT;
DESC CUSTOMER;

--UNIQUE ����ϱ� 

DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(
    id          VARCHAR2(20)    UNIQUE,
    pwd         VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100) 

);

COMMIT;

--������ �����ϱ�

INSERT INTO customer
VALUES('scott','tiger','��ı','000-1111-2222','�����' );
COMMIT;

SELECT*
FROM customer;

INSERT INTO customer
VALUES('null','TIGER1','��ı1','000-1111-2222','���ֵ�' );

COMMIT;

SELECT *
FROM customer;

DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(
    id          VARCHAR2(20)    NOT NULL,
    pwd         VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100) 

);

INSERT INTO customer
VALUES(NULL,'tiger','��ı','000-1111-2222','�����' );

INSERT INTO customer ----NOT NULL�� �ߺ��� ���
VALUES('scott','tiger','��ı','000-1111-2222','�����' );

INSERT INTO customer
VALUES('scott','tiger','��ı','000-1111-2222','�����' );

SELECT*
FROM customer;

--NOT NULL�� �ߺ��� ����ϰ� UNIQUE�� NULL�� ����Ѵ�

CREATE TABLE CUSTOMER2(
    id          VARCHAR2(20)    UNIQUE,
    pwd         VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100) 

);


INSERT INTO customer2 ----UNIQUEŰ NULL ���
VALUES(NULL,'tiger','��ı','000-1111-2222','�����' );

INSERT INTO customer2 -- UNIQUEŰ �ߺ� �ȵ�
VALUES('scott','tiger','��ı','000-1111-2222','�����' );

INSERT INTO customer2
VALUES('scott','tiger','��ı','000-1111-2222','�����' );

--���� ���� �̸� �����ϱ� 
DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(
    id          VARCHAR2(20)    CONSTRAINT customer_id_uk UNIQUE,
    pwd         VARCHAR2(20)    CONSTRAINT customer_pwd_nn NOT NULL,
    name        VARCHAR2(20)   CONSTRAINT customer_name_nn NOT NULL,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100) 

);

COMMIT;

--���� ���� Ȯ���ϱ� 
SELECT table_name, constraint_name
FROM user_constraints
WHERE table_name in('CUSTOMER');


