
--��ü ��� ����ϱ�
SELECT *
FROM employee;

--�����ȣ�� ����� ����ϱ� 

SELECT eno, ename
FROM employee; 

-- ���� ���ϱ� 
SELECT ename, salary, salary*12
FROM employee;

--Ŀ�̼��� ���� ���� ���ϱ� 
SELECT ename, salary, job, dno, commision, salary*12+commision
FROM employee;

--NVL �Լ� ����ϱ� 

SELECT ename, salary, job, dno,NVL(commision,0), salary*12+NVL(commision,0)
FROM employee;

--Į���� ��Ī �����ϱ�

SELECT ename, salary*12+NVL(commision,0) ����
FROM employee;

--Į���� ��Ī ���̿� AS �߰��ϱ�

SELECT ename, salary*12+NVL(commision,0) AS ����
FROM employee;

--Į���� ��Ī ���̿� AS �߰��ϱ�

SELECT ename, salary*12+NVL(commision,0) AS "��    ��"
FROM employee;

--������̺��� �μ���ȣ�� �ѹ����� ����ϱ�

SELECT DISTINCT(dno)
FROM employee;

-- DUAL ���̺��� ���� Ȯ���ϱ�
DESC dual;

--DUMMY �÷��� �����ϱ�
SELECT *
FROM dual;

--���� ��¥ ����ϱ� 
SELECT sysdate
FROM dual;
