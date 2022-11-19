-- SCOTT�� ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
SELECT  ename, dno
FROM    employee
WHERE   dno = ( 
            SELECT  dno
            FROM    employee
            WHERE   ename='SCOTT'
);  

-- �ּ� �޿��� �޴� ����� �̸�, ��پ���, �޿� ����ϱ�
SELECT ename, job, salary
FROM employee
WHERE salary = (
                SELECT MIN(salary)
                FROM employee
                );
                
-- �μ���ȣ�� 30���� ����� �ּұ޿��� ������, �μ��� �ּ� �޿��� ���� �ּ� �޿����� ū �μ��� ����ϱ�
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno
HAVING MIN(salary) > (
                        SELECT MIN(salary) 
                        FROM employee
                        WHERE dno= 30
                      );
            
                      
-- IN ������ ����ϱ�
SELECT eno, ename
FROM employee
WHERE salary IN (
                SELECT MIN(salary)
                FROM employee
                GROUP BY dno
                );

-- ������ SALESMAN�� �ƴϸ鼭 �޿��� ������ SALESMAN���� ���� ��� ����ϱ�
-- �ִ� �޿�

SELECT eno, ename, job, salary
FROM employee
WHERE salary <ANY(
                    SELECT salary
                    FROM employee
                    WHERE job = 'SALESMAN'
)
AND job <> 'SALESMAN';


�ּұ޿�
SELECT MIN(salary)
FROM employee
WHERE job = 'SALESMAN';


-- ������ SALESMAN�� �ƴϸ鼭 ������ SALESMAN�� ������� �޿��� ���� ��� ����ϱ�
SELECT eno, ename, job, salary
FROM employee
WHERE salary <ALL (
                    SELECT MIN(salary)
                    FROM employee
                    WHERE job = 'SALESMAN'
)
AND job <> 'SALESMAN';


-- �μ� ������ �����ϱ� ���� ���̺� �����ϱ�
CREATE TABLE DEPT (
    dno         NUMBER(2),
    dname       VARCHAR2(14),
    loc         VARCHAR2(13)
);

COMMIT;

DESC dept;

-- ���� ���� ������ �μ� ���̺��� ������ ������ �����ձ�
CREATE TABLE DEPT_SECOND
AS
SELECT *
FROM department;


commit;

DESC dept_second;

SELECT *
FROM dept_second;

--20�� �μ� �Ҽ� ����� ���� ������ ������ DEPT20 ���̺� �����ϱ�
CREATE TABLE DEPT20
AS
SELECT eno, ename, salary*12 "annsal"
FROM employee
WHERE dno=20;

COMMIT;

SELECT *
FROM dept20;

-- �μ� ���̺��� ������ �����ϱ�
CREATE TABLE DEPT_THIRD
AS
SELECT dno, dname
FROM department
WHERE 0=1;

COMMIT;

SELECT *
FROM dept_third;

--��� ���̺� ��¥ Ÿ���� ������ birth �÷� �߰��ϱ�
ALTER TABLE DEPT20
ADD(
    birth date);
);

COMMIT;

SELECT *
FROM DEPT20;

-- ����̸� �÷� ũ�� �����ϱ�
ALTER TABLE DEPT20
MODIFY ename VARCHAR2(30);

COMMIT;

DESC dept20;

SELECT *
FROM dept20;

-- ��� ���̺��� ����̸� �÷� �����ϱ�
ALTER TABLE DEPT20
DROP COLUMN ename;

COMMIT;

DESC dept20;

SELECT *
FROM dept20;

-- ��� ���̺��� �����ȣ �����ϱ�
ALTER TABLE DEPT20
SET UNUSED (eno);

COMMIT;

DESC dept20;

SELECT *
FROM dept20;

-- ���� unused�� ǥ�õ� ��� �÷��� �����ϱ�
ALTER TABLE DEPT20
DROP UNUSED COLUMNS;

DESC dept20;

SELECT *
FROM dept20;

-- ���̺�� �����ϱ�
RENAME dept20 TO emp20;

COMMIT;

DESC emp20;

-- ���̺� �����ϱ�
DROP TABLE emp20;

COMMIT;

DESC emp20;

-- ���̺��� ��� ������ �����ϱ�
TRUNCATE TABLE dept_second;

COMMIT;

DESC dept_second;

SELECT *
FROM dept_second;



