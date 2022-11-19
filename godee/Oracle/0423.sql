commit;


CREATE TABLE    CUSTOMER(
    id          VARCHAR2(20)    CONSTRAINT customer_id PRIMARY KEY,
    pwd         VARCHAR2(20)    ,
    name        VARCHAR2(20)   ,
    phone       VARCHAR2(30), 
    adress      VARCHAR2(100)  

);

--FORIEN KEY �������� �����ϱ�

CREATE TABLE    emp_second(
    eno         NUMBER(4)           CONSTRAINT  emp_second_eno_pk  PRIMARY KEY,
    ename       VARCHAR2(10),
    job         VARCHAR2(9),
    dno         NUMBER(2)           CONSTRAINT emp_second_dno_fk REFERENCES department

);

COMMIT;

INSERT INTO emp_second
VALUES(8000,'������','����',50);

SELECT*
FROM department;

--CHECK ���� ���� �����ϱ� 

DROP TABLE emp_second;
COMMIT;



CREATE TABLE emp_second(
    eno         NUMBER(4)           CONSTRAINT  emp_second_eno_pk  PRIMARY KEY,
    ename       VARCHAR2(10),
    salary      NUMBER(7,2)         CONSTRAINT  emp_second_salary CHECK(salary>0)        

);

COMMIT;

INSERT INTO emp_second
VALUES(8000,'���',-200);

CREATE TABLE emp_second(
    eno         NUMBER(4)           CONSTRAINT  emp_second_eno_pk  PRIMARY KEY,
    ename       VARCHAR2(10),
    salary      NUMBER(7,2)         DEFAULT 3000        

);

COMMIT;
INSERT INTO emp_second
(eno,ename)
VALUES(8000,'���');
COMMIT;

SELECT *
FROM emp_second;



--PRIMARY KEY ���� ���� �߰��ϱ� 

DESC dept_copy;
SELECT table_name, constraint_name
FROM user_constraints
WHERE table_name IN('DEPT_COPY');

DESC emp_copy;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno);

DESC dept_copy;

SELECT *
FROM dept_copy;

INSERT INTO dept_copy 
VALUES (10,'ACCOUNTINGS','�ѱ�');


--FOREIGN KEY ���� ���� �߰��ϱ�

ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_dno_fk FOREIGN key(dno) REFERENCES dept_copy(dno);

COMMIT;

SELECT*
FROM emp_copy;

--NULL �� ������� �ʱ� 
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;

--���� ���� �����ϱ�

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;
COMMIT;

--NOT NULL���� ���� �����ϱ� 
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

COMMIT;

--���� ���� ��Ȱ��ȭ
CREATE TABLE emp_second(
    eno         NUMBER(4)           CONSTRAINT  emp_second_eno_pk  PRIMARY KEY,
    ename       VARCHAR2(10),
    job         VARCHAR2(9),
    dno         NUMBER(2)           CONSTRAINT emp_second_dno_fk REFERENCES department

);

COMMIT;

INSERT INTO emp_second
(eno,ename,job, dno)
VALUES(8000,'������','����',50);

ALTER TABLE emp_second
DISABLE CONSTRAINT emp_second_dno_fk;

COMMIT;

INSERT INTO emp_second
(eno,ename,job, dno)
VALUES(8000,'������','����',50);

SELECT *
FROM emp_second;

--�������� Ȱ��ȭ�ϱ�
DELETE emp_second
WHERE dno=50;

ALTER TABLE emp_second
ENABLE CONSTRAINT emp_second_dno_fk;

