--��ü ��� ����ϱ�
SELECT *
FROM employee;

--��� ��ȣ�� ����� ����ϱ�

SELECT eno, ename 
FROM employee;

--���� ���ϱ�
SELECT ename, salary, salary*12
FROM employee;

--Ŀ�̼��� ���� ���� ���ϱ�

SELECT ename, salary, job, dno, commision, salary*12, salary*12+commision
FROM employee;



-- NVL �Լ� ����ϱ� 

SELECT ename, salary, job, dno, NVL(commision,0) , salary*12, salary*12+NVL(commision,0)
FROM employee;

-- �÷��� ��Ī �����ϱ�

SELECT ename, salary*12+NVL(commision,0) ����
FROM employee;

--�÷���� ��Ī ���̿� AS �߰��ϱ�


SELECT ename, salary*12+NVL(commision,0) AS ����
FROM employee;


SELECT ename, salary*12+NVL(commision,0) AS "�� ��"
FROM employee;

--������̺���, �μ���ȣ�� �ѹ����� ����ϱ� 

SELECT DISTINCT dno  --DISTINCT�� SELECT �ٷ� �ڿ� ����Ѵ�.
FROM employee;

-- DUAL ���̺��� ���� Ȯ���ϱ�
DESC dual;

--DUMMY �÷��� Ȯ���ϱ� 
SELECT *
FROM dual;

--���� ��¥ ����ϱ� 

SELECT sysdate
FROM dual;