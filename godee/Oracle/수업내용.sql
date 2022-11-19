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

SELECT ename, salary, job, dno, commission, salary*12, salary*12+commission
FROM employee;



-- NVA �Լ� ����ϱ� 

SELECT ename, salary, job, dno, NVA(commission,0) , salary*12, salary*12+NVA(commission,0)
FROM employee;

-- �÷��� ��Ī �����ϱ�

SELECT ename, salary*12+NVL(commission,0) ����
FROM employee;

--�÷���� ��Ī ���̿� AS �߰��ϱ�


SELECT ename, salary*12+NVL(commission,0) AS ����
FROM employee;


SELECT ename, salary*12+NVL(commission,0) AS "�� ��"
FROM employee;

--������̺���, �μ���ȣ�� �ѹ����� ����ϱ� 

SELECT dno DISTRICT
FROM employee;

-- DUAL ���̺��� ���� Ȯ���ϱ�
DESC dual;

--DUMMY �÷��� Ȯ���ϱ� 
SELECT *
FROM dual;

--���� ��¥ ����ϱ� 

SELECT sysdate
FROM dual;