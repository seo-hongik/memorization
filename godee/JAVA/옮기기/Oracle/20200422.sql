DESC dept_copy;

SELECT * 
FROM dept_copy;

DROP TABLE dept_copy;
COMMIT;

DESC dept_copy;

CREATE TABLE DEPT_COPY
AS
SELECT *
FROM department;

COMMIT;

--ROLLBACK �����ϱ�
DELETE dept_copy; 

SELECT *
FROM dept_copy;

ROLLBACK;

SELECT *
FROM dept_copy;


-- PRIMARY KEY �����ϱ�
DESC dept_second;
DROP TABLE dept_second;

COMMIT;

CREATE TABLE DEPT_SECOND(
    dno     NUMBER(2)       CONSTRAINT pk_dept_second PRIMARY KEY,
    dname   VARCHAR2(14),
    loc     VARCHAR2(13)
);
COMMIT;

DESC dept_third;
DROP TABLE DEPT_THIRD;
COMMIT;

CREATE TABLE DEPT_THIRD(
    dno     NUMBER(2),      
    dname   VARCHAR2(14),
    loc     VARCHAR2(13),
    CONSTRAINT pk_dept_third PRIMARY KEY(dno)
);
COMMIT;

-- NOT NULL ����ϱ�
DESC customer;

CREATE TABLE CUSTOMER(
    id         VARCHAR2(20) NOT NULL,
    pwd        VARCHAR2(20) NOT NULL,
    name       VARCHAR2(20) NOT NULL,
    phone      VARCHAR2(30),
    address    VARCHAR2(100)
);

COMMIT;

DESC customer;

-- ������ �����ϱ�

INSERT INTO customer
VALUES(NULL, 'tiger', '��ı', '000-1111-2222', '���ֵ�');

INSERT INTO customer
VALUES('scott', 'tiger', '��ı', '000-1111-2222', '���ֵ�');

INSERT INTO customer
VALUES('scott', 'tiger', '��ı', '000-1111-2222', '���ֵ�');

-- UNIQUE ����ϱ�
DESC customer;
DROP TABLE CUSTOMER;
COMMIT;

CREATE TABLE CUSTOMER(
    id         VARCHAR2(20) UNIQUE,
    pwd        VARCHAR2(20) NOT NULL,
    name       VARCHAR2(20) NOT NULL,
    phone      VARCHAR2(30),
    address    VARCHAR2(100)
);
COMMIT;

DESC customer;

-- ������ �����ϱ�
INSERT INTO customer
VALUES('scott', 'tiger', '��ı', '000-1111-2222', '�����');

COMMIT;

SELECT *
FROM customer;

INSERT INTO customer
VALUES('scott', 'tiger', '��ı1', '000-1111-2222', '���ֵ�');

INSERT INTO customer
VALUES(NULL, 'tiger', '��ı1', '000-1111-2222', '���ֵ�');

COMMIT;

SELECT *
FROM customer;

-- �������� �̸� �����ϱ�
DROP TABLE CUSTOMER;
COMMIT;

CREATE TABLE CUSTOMER(
    id         VARCHAR2(20) CONSTRAINT customer_id_uk   UNIQUE,
    pwd        VARCHAR2(20) CONSTRAINT customer_pwd_nn  NOT NULL,
    name       VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone      VARCHAR2(30),
    address    VARCHAR2(100)
);
COMMIT;

-- �������� Ȯ���ϱ�
SELECT table_name, constraint_name
FROM user_constraints
WHERE table_name IN('CUSTOMER');

