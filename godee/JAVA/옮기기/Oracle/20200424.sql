SELECT table_name
FROM    user_tables;

-- �ܼ� �� �����ϱ�
DESC emp_second;
DESC dept_second;

SELECT *
FROM emp_second;

DROP TABLE emp_second;
DROP TABLE dept_second;

CREATE TABLE EMP_SECOND
AS
SELECT *
FROM employee;

CREATE TABLE DEPT_SECOND
AS
SELECT *
FROM department;

COMMIT;


-- �ܼ� �� �����ϱ�
CREATE view v_emp_job(���,����̸�,�μ���ȣ,������)
AS
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'SALESMAN';

-- �� ����ϱ�
SELECT *
FROM v_emp_job;

-- �� �����ϱ�
CREATE VIEW V_EMP_JOB2
AS
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'SALESMAN';

SELECT *
FROM v_emp_job2;

-- ������ ���� �� Ȱ���ϱ�
CREATE VIEW V_EMP_JOB_SAMPLE
AS
SELECT eno,ename,job,manager,dno
FROM emp_second;

COMMIT;

SELECT *
FROM v_emp_job_sample;

-- ������ ���� ��� ���ؼ� �� Ȱ���ϱ�
CREATE VIEW V_EMP_COMPLEX2
AS
SELECT e.eno, e.ename, e.salary, dno, d.dname, d.loc
FROM emp_second e NATURAL JOIN dept_second d;

SELECT *
FROM v_emp_complex2;

-- USER_VIEWS ������ ���� ���Ǳ�
SELECT view_name, text
FROM USER_VIEWS;

-- �並 ���� �⺻ ���̺� ������ �߰��ϱ�
INSERT INTO v_emp_job
VALUES(8000,'���',30,'SALASMAN');

COMMIT;

SELECT *
FROM v_emp_job;

SELECT *
FROM emp_second;

-- �信 �׷��Լ� ����ϱ�(��Ī ���)
CREATE VIEW V_EMP_SALARY
AS 
SELECT dno, SUM(salary) AS "SAL_SUM", AVG(salary) AS "SAL_AVG"
FROM emp_second
GROUP BY dno;

COMMIT;

-- �� ����ϱ�
SELECT *
FROM v_emp_salary;

-- ���� ����
CREATE VIEW V_EMP_SALARY
AS 
SELECT dno, SUM(salary), AVG(salary) AS
FROM emp_second
GROUP BY dno; -- �۵� �ȵ˴ϴ�.

-- ���� ����
SELECT *
FROM v_emp_salary;

INSERT INTO v_emp_salary
VALUES(8010,1000,300);


-- �� �����ϱ�
DROP VIEW V_EMP_JOB;
COMMIT;

SELECT *
FROM v_emp_job;

-- �� ���� �����ϱ�
SELECT *
FROM v_emp_job2;

CREATE OR REPLACE VIEW v_emp_job2
AS 
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'MANAGER';

SELECT *
FROM v_emp_job2;

-- ���� ����
CREATE OR REPLACE VIEW v_emp_NOTABLE
AS 
SELECT eno,ename,dno,job
FROM emp_notable
WHERE job LIKE 'MANAGER';

-- ���� ���̺��� �������� �ʴ��� �� �����ϱ�
CREATE OR REPLACE FORCE VIEW V_EMP_NOTABLE
AS
SELECT eno,ename,dno,job
FROM emp_notable
WHERE job LIKE 'MANAGER';

SELECT view_name, text
FROM USER_VIEWS
WHERE view_name IN('V_EMP_NOTABLE');

-- ��� ������ MANAGER�� ������� ��ȸ�ϴ� �� �����ϱ�
CREATE OR REPLACE FORCE VIEW V_EMP_NOCHK
AS
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'MANAGER';

-- �� ��ȸ�ϱ�
SELECT *
FROM v_emp_nochk;

-- �信 ����� �߰��ϵ� �������� SALESMAN���� �����ϱ�
INSERT INTO v_emp_nochk
VALUES(9000,'���̾�',30,'SALESMAN');

INSERT INTO v_emp_nochk
VALUES(9010,'����',30,'MANAGER');

COMMIT;

SELECT *
FROM v_emp_nochk;

SELECT *
FROM emp_second;

CREATE OR REPLACE FORCE VIEW V_EMP_CHK
AS
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'MANAGER' WITH CHECK OPTION;

INSERT INTO v_emp_chk
VALUES(9020,'����ġ',30,'SALESMAN');

-- ��� ������ MANAGER

CREATE OR REPLACE FORCE VIEW V_EMP_READONLY
AS
SELECT eno,ename,dno,job
FROM emp_second
WHERE job LIKE 'MANAGER' WITH READ ONLY;

COMMIT;

-- �信 �������� MANAGER�� ��� �߰��ϱ�
INSERT INTO v_emp_readonly
VALUES(9020,'����ġ',30,'MANAGER');
