-- ���̺��� ����
DESC employee;
DESC department;
DESC salgrade;

-- ���̺� �����ϱ�
DROP TABLE employee;
DROP TABLE department;
DROP TABLE salgrade;
COMMIT;


-- 25�� �迹�� �μ����̺� �����ϱ�
CREATE TABLE DEPARTMENT 
(
DNO     NUMBER(2)           NOT NULL,          --�μ���ȣ
DNAME   VARCHAR2(14)        NOT NULL,          --�μ���
LOC     VARCHAR2(13)        NOT NULL,          --������
CONSTRAINT PK_DEPT PRIMARY KEY(DNO)
);

COMMIT;



-- 25�� �迹�� �μ����̺� ���� Ȯ���ϱ�
DESC department;






-- 25�� �迹�� ������̺� ���� �����ϱ�(2)
CREATE TABLE EMPLOYEE 
(
ENO         NUMBER(4)       NOT NULL,                     -- �����ȣ  
ENAME       VARCHAR2(10)    NOT NULL,                     -- �����
JOB         VARCHAR2(9)     NOT NULL,                     -- ������
MANAGER     NUMBER(4),                                    -- �ش����� ����ȣ 
HIREDATE    DATE            NOT NULL,                     -- �Ի���
SALARY      NUMBER(7,2)     NOT NULL,                     -- �޿�
COMMISION   NUMBER(7,2),                                  -- Ŀ�̼�
DNO         NUMBER(2)       NOT NULL,                     -- �μ���ȣ
CONSTRAINT PK_EMP PRIMARY KEY(ENO),
CONSTRAINT FK_DNO FOREIGN KEY(DNO) REFERENCES DEPARTMENT            
);

COMMIT;



-- 25�� �迹�� ������̺� ���� Ȯ���ϱ�(2)
DESC employee;



-- 25�� �迹�� �޿����̺� �����ϱ�(2)
CREATE TABLE SALGRADE
(
GRADE       NUMBER      NOT NULL,        -- �޿� ���
LOSAL       NUMBER      NOT NULL,        -- �޿� ���Ѱ�
HISAL       NUMBER      NOT NULL,        -- �޿� ���Ѱ�
CONSTRAINT PK_SAL PRIMARY KEY(GRADE)
);

COMMIT;



-- 25�� �迹�� �޿����̺� ���� Ȯ���ϱ�(2)
DESC salgrade;



INSERT INTO DEPARTMENT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPARTMENT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPARTMENT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPARTMENT VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO EMPLOYEE VALUES
(7369,'SMITH','CLERK',    7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7499,'ALLEN','SALESMAN', 7698,to_date('20-2-1981', 'dd-mm-yyyy'),1600,300,30);
INSERT INTO EMPLOYEE VALUES
(7521,'WARD','SALESMAN',  7698,to_date('22-2-1981', 'dd-mm-yyyy'),1250,500,30);
INSERT INTO EMPLOYEE VALUES
(7566,'JONES','MANAGER',  7839,to_date('2-4-1981',  'dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981', 'dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMPLOYEE VALUES
(7698,'BLAKE','MANAGER',  7839,to_date('1-5-1981',  'dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMPLOYEE VALUES
(7782,'CLARK','MANAGER',  7839,to_date('9-6-1981',  'dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMPLOYEE VALUES
(7788,'SCOTT','ANALYST',  7566,to_date('13-07-1987', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7839,'KING','PRESIDENT', NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMPLOYEE VALUES
(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981',  'dd-mm-yyyy'),1500,0,30);
INSERT INTO EMPLOYEE VALUES
(7876,'ADAMS','CLERK',    7788,to_date('13-07-1987', 'dd-mm-yyyy'),1100,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7900,'JAMES','CLERK',    7698,to_date('3-12-1981', 'dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMPLOYEE VALUES
(7902,'FORD','ANALYST',   7566,to_date('3-12-1981', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMPLOYEE VALUES
(7934,'MILLER','CLERK',   7782,to_date('23-1-1982', 'dd-mm-yyyy'),1300,NULL,10);

INSERT INTO SALGRADE VALUES (1, 700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

COMMIT;


-- ��ü ��� ����ϱ�
SELECT * 
FROM employee;

--�����ȣ�� ����� ����ϱ�
SELECT eno, ename 
FROM employee;


--�������ϱ�
SELECT ename, salary, salary*12
FROM employee;


--Ŀ�̼��� ���� ���� ���ϱ�
SELECT ename, salary, job, dno, commision, salary*12, salary*12+commision
FROM employee;

--NVL �Լ� ����ϱ�
SELECT ename, salary, job, dno, NVL(commision,0), salary*12, salary*12+NVL(commision, 0)
FROM employee;


-- Į���� ��Ī �����ϱ�
SELECT ename, salary*12+NVL(commision, 0) ����
FROM employee;


-- �÷���� ��Ī ���̿� AS�߰��ϱ�
SELECT ename, salary*12+NVL(commision, 0) AS ����
FROM employee;


-- ""�� ��Ī �����ϱ�
SELECT ename, salary*12+NVL(commision, 0) AS "��    ��"
FROM employee;


--������̺��� �μ���ȣ�� �ѹ����� ����ϱ�
SELECT DISTINCT dno 
FROM employee;

-- DUAL ���̺��� ���� Ȯ��
DESC dual;

-- DUMMY �÷��� Ȯ���ϱ�
SELECT *
FROM dual;

-- ���� ��¥ ����ϱ�
SELECT sysdate
FROM department;

SELECT sysdate
FROM dual;

