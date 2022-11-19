-- ����ڰ� ������ ���̺� ���� ���� ��ȸ�ϱ�
SELECT table_name
FROM user_tables;

SELECT sequence_name
FROM user_sequences;

SELECT view_name
FROM user_views;

-- ���̺� ���� ���� ��ȸ�ϱ�
SELECT owner, table_name
FROM all_tables;

--ACCOUNTING �μ��� ���� �Է��ϱ�
DESC dept_copy;
DROP TABLE dept_copy;
CREATE TABLE DEPT_COPY
AS
SELECT *
FROM department
WHERE 0=1;

COMMIT;

INSERT INTO dept_copy
VALUES(10, 'ACCONTING', 'NEW YORK');

COMMIT;

SELECT *
FROM dept_copy;

--RESEARCH �μ��� ���� �Է��ϱ�
INSERT INTO dept_copy
VALUES(20,'RESEARCH','DALLAS');

SELECT *
FROM dept_copy;

SELECT *
FROM department;

-- ��������� NULL�� �����ϱ�
INSERT INTO dept_copy
VALUES(30, 'OPERATIONS', NULL);

-- ���� ���� �����ϱ�
INSERT INTO dept_copy
VALUES(50, 'COMPUTING', ' ');

COMMIT;

DELETE dept_copy
WHERE dno = 50;

SELECT *
FROM dept_copy;


-- ��¥ ������ �Է��ϱ�
DESC emp_copy;

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate,dno
FROM employee
WHERE 0=1;

COMMIT;

INSERT INTO emp_copy
(eno, ename, job, hiredate,dno)
VALUES(7000, 'CANDY', 'MANAGER', SYSDATE, 10);

COMMIT;

SELECT *
FROM emp_copy;


-- ��¥ ������ �Է��ϱ�
INSERT INTO emp_copy
(eno, ename, job, hiredate, dno)
VALUES(7010, 'TOM', 'MANAGER', TO_DATE('2020,04,21', 'YYYY/MM/DD'),20);

COMMIT;

--���� ��¥ �Է��ϱ�
INSERT INTO emp_copy
(eno, ename, job, hiredate, dno)
VALUES(7020, 'JERRY', 'SALESMAN', '2020/04/21', 30);

COMMIT;

SELECT *
FROM emp_copy;

-- ���� ������ ���� �� �Է��ϱ�
DROP TABLE dept_copy;

COMMIT;

DESC dept_copy;

CREATE TABLE DEPT_COPY
AS
SELECT *
FROM department
WHERE 0 = 1;

COMMIT;

INSERT INTO dept_copy
SELECT *
FROM department;

COMMIT;

SELECT *
FROM dept_copy;

-- Ư�� �ο츸 �����ϱ�
SELECT *
FROM dept_copy
ORDER BY dno;

UPDATE dept_copy
SET dname = 'PROGRAMMING'
WHERE dno = 10;

COMMIT;

SELECT *
FROM dept_copy;

-- ��� �ο� �����ϱ�
UPDATE  dept_copy
SET     dname='HR';

COMMIT;

SELECT *
FROM dept_copy;

-- �÷��� ������ �ѹ��� �����ϱ�
SELECT *
FROM dept_copy
ORDER BY dno;

UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno = 10;

COMMIT;

SELECT *
FROM dept_copy
ORDER BY dno;

-- 10�� �μ��� �������� 20�� �μ��� ���������� �����ϱ�
UPDATE dept_copy
SET loc = (
            SELECT loc
            FROM dept_copy
            WHERE dno = 20
            )
WHERE dno = 10;

SELECT *
FROM dept_copy;

COMMIT;

-- 10�� �μ��� �μ���� �������� 30�� �μ��� �μ���� ���������� �����ϱ�
UPDATE dept_copy
SET loc = (
            SELECT loc
            FROM dept_copy
            WHERE dno = 30
            ),
    dname = (
            SELECT dname
            FROM dept_copy
            WHERE dno = 30  
              )
WHERE dno = 10;


SELECT *
FROM dept_copy;

COMMIT;

-- Ư�� �ο츸 �����ϱ�
SELECT *
FROM dept_copy
ORDER BY dno;

DELETE dept_copy
WHERE dno = 10;

COMMIT;

SELECT *
FROM dept_copy
ORDER BY dno;

-- ��� �ο� �����ϱ�
DELETE dept_copy;

DESC dept_copy;

SELECT *
FROM dept_copy;

-- �����ο� �ٹ��ϴ� ��� ����
DESC emp_copy;

SELECT *
FROM emp_copy;

DROP TABLE emp_copy;

COMMIT;

CREATE TABLE EMP_COPY
AS 
SELECT *
FROM employee;

COMMIT;

SELECT *
FROM employee;

SELECT *
FROM emp_copy;

SELECT *
FROM department;

DELETE emp_copy
WHERE dno = (
                SELECT  dno
                FROM    department
                WHERE   dname='SALES'
            );

COMMIT;

SELECT *
FROM emp_copy;
