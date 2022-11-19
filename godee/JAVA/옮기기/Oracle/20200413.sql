SHOW USER;
DESC employee;
DESC department;
DESC salgrade;

SELECT *
FROM employee;

CREATE TABLE RRRR 
(
A   NUMBER(2) NOT NULL,
B   NUMBER NOT NULL,
C   NUMBER,
D   VARCHAR2(13) NOT NULL,
CONSTRAINT PK_RR PRIMARY KEY(A)
);

SELECT *
FROM RRRR;

DESC RRRR;

DROP TABLE RRRR;
COMMIT;

-- ������� �Ի��� �⵵�� �Ի��� �޸� ����Ͻÿ�.
SELECT TO_CHAR(hiredate, 'YY/MM')
FROM employee;

-- 4���� �Ի��� ����� ����Ͻÿ�.
SELECT *
FROM employee
WHERE TO_CHAR(hiredate, 'MM')=4;

SELECT *
FROM employee
WHERE TO_DATE(19810402, 'YYYY/MM/DD')=hiredate;

SELECT *
FROM employee
WHERE TO_DATE(TRUNC(hiredate, 'DAY'), 'YY/MM')='8104';

-- �����ȣ�� ¦���� ����� ����Ͻÿ�
SELECT *
FROM employee
WHERE MOD(eno, 2)=0;


-- �Ի����� ������ 2�ڸ�(YY), ���� ����(MON)�� ǥ���ϰ� ������(DY)�� �����Ͽ� ����Ͻÿ�
SELECT hiredate, TO_CHAR(hiredate, 'YY/MON/DY')
FROM employee;

-- ���� ��ĥ�� �������� ����Ͻÿ�. ���� ��¥���� ���� 1�� 1���� �� ����� ����ϰ� �������� ��ġ��Ű�ÿ�.
SELECT SYSDATE AS "���� ��¥", TRUNC((SYSDATE - TO_DATE(20200101, 'YYYY/MM/DD')), 0)
FROM dual;

-- ������� ��� �����ȣ�� ����ϵ� ��簡 ���� ����� ���ؼ��� NULL �� ��� 0���� ����Ͻÿ�.
SELECT eno, ename, NVL(manager, 0) AS "MANAGER"
FROM employee;

-- ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�. ������ 'ANALYST�� ����� 200, 'SALESMAN'�� ����� 180, 'MANAGER'�� ����� 150, 'CLERK'�� ����� 100�� �λ��Ͻÿ�.

SELECT eno, ename, job, salary,
        DECODE (job,    'ANALYST', (salary+200),
                        'SALESMAN', (salary+180),
                        'MANAGER', (salary+150),
                        'CLERK', (salary+100),
                        salary
                        ) AS "�λ�� �޿�"
FROM employee;

SELECT eno, ename, job, salary,
       CASE 
            WHEN job= 'ANALYST' THEN salary + 200
            WHEN job ='SALESMAN' THEN salary + 180
            WHEN job = 'MANAGER' THEN salary + 150
            WHEN job = 'CLERK' THEN salary + 100
            ELSE salary
            END AS "�λ�� �޿�"       
FROM employee
ORDER BY dno;

SELECT ename, salary, commision, COALESCE(COMMISION, SALARY)
FROM employee
ORDER BY job;

-- ������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ��� ����ϱ�
SELECT  SUM(salary) as "�޿��Ѿ�",
        AVG(salary) as "�޿����",
        MAX(salary) as "�ִ�޿�",
        MIN(salary) AS "�ּұ޿�"
FROM employee;

-- �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի����� ����ϱ�
SELECT MAX(hiredate), MIN(hiredate)
FROM employee;

-- ������� Ŀ�̼� �Ѿ��� ����ϱ�
SELECT SUM(commision) "Ŀ�̼� �Ѿ�"
FROM employee;

-- ��ü ��� ���� ���ϱ�
SELECT COUNT(*) "����� ��"
FROM employee;


-- Ŀ�̼��� �޴� �ֵ� ���ϱ�
SELECT *
FROM employee
WHERE commision IS NOT NULL;

SELECT COUNT(commision) as "Ŀ�̼� �޴� ��� ��"
FROM employee;

-- ���� ������ ������ ����ϱ�
SELECT COUNT(DISTINCT job) "���� ������ ����"
FROM employee;

-- ���� ���� ���� �߻�
SELECT ename, MAX(salary)
FROM employee;
--ORA-00937: not a single-group group function
--00937. 00000 -  "not a single-group group function"
--*Cause:    
--*Action:

-- �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�
SELECT dno "�μ���ȣ", AVG(salary) "�޿����"
FROM employee
GROUP BY dno;

-- �Ҽ� �μ��� ��� �޿� ���ϱ�
SELECT AVG(salary) "�޿����"
FROM employee
GROUP BY dno;

-- ���ǻ���
SELECT dno, ename, AVG(salary)
FROM employee
GROUP BY dno;
--ORA-00979: not a GROUP BY expression
-- 00979. 00000 -  "not a GROUP BY expression"

-- �����÷��� �̿��Ͽ� �׷캰�� �˻��ϱ�
SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno, job
ORDER BY dno, job;

-- �μ��� �޿� �Ѿ��� 3000 �̻��� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ���ϱ�
SELECT dno, SUM(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

-- MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ����(����)�� �޿� �Ѿ� ���ϱ�
SELECT job "����", COUNT(*) "�����", SUM(salary) "�޿� �Ѿ�"
FROM employee
WHERE job != 'MANAGER'
GROUP BY job
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);

-- ��� �޿� �� �ְ� �޿��� ����ϱ�
SELECT MAX(AVG(salary)) 
FROM employee
GROUP BY dno;

-- �����Ұ�
SELECT AVG(MAX(salary)) 
FROM employee
GROUP BY dno;

SELECT dno, AVG(salary)
FROM employee
GROUP BY dno;

