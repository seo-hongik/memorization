--�μ� ������ �����ϱ� ���� ���̺� �����ϱ� 

CREATE TABLE DEPT(
    dno     NUMBER(2),
    dname   VARCHAR2(14),
    LOC     VARCHAR2(13)
);

COMMIT;

DESC dept;

--���� ���������� �μ� ���̺��� ������ ������ �����ϱ�

CREATE TABLE DEPT_SECOND
AS
SELECT *
FROM department;

COMMIT;

DESC dept_second;

SELECT *
FROM dept_second;

--20�� ���� �Ҽ� ����� ���� ������ ������ DEPT20 ���̺� �����ϱ� 

CREATE TABLE DEPT20
AS
SELECT eno, ename, salary*12 annsal
FROM employee
WHERE dno=20;

COMMIT;

SELECT *
FROM dept20;

--�μ� ���̺��� ������ �����ϱ�
CREATE TABLE DEPT_THIRD
AS
SELECT dno, dname
FROM department
WHERE 0=1;

COMMIT;

SELECT * 
FROM dept_third;

--��� ���̺� ��¥ Ÿ���� ������ birth Į�� �߰��ϱ�

ALTER TABLE DEPT20
ADD(birth date);

COMMIT;

DESC dept20;

SELECT *
FROM dept20;

--��� �̸� �÷�, ũ�� �����ϱ� 

ALTER TABLE DEPT20
MODIFY ename VARCHAR2(30);

COMMIT;

SELECT*
FROM dept20;

--��� ���̺��� ����̸� �÷� �����ϱ� 

ALTER TABLE DEPT20
DROP COLUMN ename;


COMMIT;

DESC dept20;

SELECT*
FROM dept20;

--��� ���̺��� �����ȣ �����ϱ� 

ALTER TABLE DEPT20
SET UNUSED (eno);

COMMIT;

DESC dept20;

SELECT*
FROM dept20;

--���� UNUSED�� ǥ�õ� ��� �÷� �����ϱ� 

ALTER TABLE DEPT20
DROP UNUSED COLUMNS;

COMMIT;

DESC dept20;

SELECT *
FROM dept20;

--���̺�� �����ϱ� 

RENAME dept20 TO emp20;

COMMIT;

DESC dept20;

DESC emp20;

-- ���̺� �����ϱ�
DROP TABLE emp20;

COMMIT;

DESC emp20;

--���̺��� ��� ������ �����ϱ� 

TRUNCATE TABLE dept_second;

COMMIT;

DESC dept_second;

SELECT *
FROM dept_second;
