--������� �޿� �Ѿ�, ��վ�,�ְ��, �ּҾ� ����ϱ� 

SELECT  SUM(salary) AS �޿��Ѿ�,
        AVG(salary) AS �޿����,
        MAX(salary) AS �ִ�޿�,
        MIN(salary) AS �ּұ޿�
FROM employee;

--�ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�

SELECT MAX(hiredate), MIN(hiredate)
FROM employee;

--������� Ŀ�̼� �Ѿ��� ����ϱ� 
--�ΰ������ϰ� ���
SELECT SUM(commision) "Ŀ�̼� �Ѿ�"
FROM employee;

--��ü ��� ���� ���ϱ�

SELECT COUNT(*) "����� ��"
FROM employee;

-- Ŀ�̼��� �޴� ������� ���ϱ�

SELECT *
FROM employee
WHERE commision IS NOT NULL;

SELECT COUNT(commision) "Ŀ�̼� �޴� �����"
FROM employee;

--NULL�� �߰� ���� Ȯ��
SELECT COUNT(*) "NULL ���� Ŀ�̼� �޴� �����"
FROM employee;

SELECT COUNT(*) "Ŀ�̼� �޴� �����"
FROM employee
WHERE commision IS NOT NULL;

SELECT *
FROM employee;


--����(����) ������ ������ ����ϱ�
SELECT COUNT(job)
FROM employee;

--�ߺ������ϱ�
SELECT COUNT(DISTINCT job) "���������� ����"
FROM employee;

--���ǻ��� (�׷��Լ��� �Ϲ��÷��� ���� �� �� ����)

SELECT ename, MAX(salary)
FROM employee;

--�Ҽ� �μ��� ��� �޿��� '�μ� ��ȣ�� �Բ�'- �׷����� ���´ٴ� �ǹ� ����ϱ� 
SELECT dno "�μ���ȣ ", AVG(salary) "�޿����"
FROM employee
GROUP BY dno;

--�Ҽ� �μ��� ��� �޿� ���ϱ� 

SELECT AVG(salary) "�޿����"
FROM employee
GROUP BY dno;

-- ���ǻ���

SELECT dno, ename, AVG(salary)
FROM employee
GROUP BY dno;

--���� �÷��� �̿��Ͽ� �׷캰�� �˻��ϱ� 

SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno,job
ORDER BY dno,job;

--�μ��� �޿�(�׷����) �Ѿ��� 3000 �̻�(�����̴� having)�� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ���ϱ�

SELECT dno, MAX(salary) 
FROM employee
GROUP BY dno
HAVING SUM(salary) >=3000;


-- MANAGER�� �����ϰ� �޿� �Ѿ��� 5000�̻��� ����(������) �޿� �Ѿ� ���ϱ�

SELECT job "����", COUNT(*) "�����", SUM(salary) "�޿� �Ѿ�"
FROM employee
WHERE job NOT LIKE '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >=5000
ORDER BY SUM(salary);

-- ��� �޿��� �ְ� �޿��� ����ϱ�

SELECT MAX( AVG(salary))
FROM employee
GROUP BY dno;

--���ǻ���

SELECT dno, MAX( AVG(salary))
FROM employee
GROUP BY dno, salary;

-- ������� �ٸ�

SELECT AVG( MAX(salary))
FROM employee
GROUP BY dno, salary;

--�ΰ� ������ ���ǻ���

SELECT SUM( AVG( MAX(salary)))
FROM employee
GROUP BY dno;

