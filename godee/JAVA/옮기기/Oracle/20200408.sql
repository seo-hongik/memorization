SHOW USER;

DESC employee;
DESC salgrade;

-- �޿�(salary)�� 1500 �̻��� ��� ����ϱ�

SELECT *
FROM employee
WHERE salary >= 1500;


-- 10�� �μ� �Ҽ� ��� ����ϱ�
SELECT *
FROM employee
WHERE DNO = 10;

-- �̸��� SCOTT�� ��� ����ϱ�
SELECT *
FROM employee
WHERE ename = 'SCOTT';


-- �Ի���(hiredate)�� '1981/01/01' ������ �Ի��� ��� ���
SELECT *
FROM employee
WHERE hiredate <= '1981/01/01';

-- �μ� ��ȣ�� 10�̰� ������ �Ŵ����� ����� ���
SELECT *
FROM employee
WHERE dno = 10 AND job = 'MANAGER';

--10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ������
SELECT *
FROM employee
WHERE dno=20 OR dno=30 OR dno=40;

SELECT *
FROM employee
WHERE dno != 10;

SELECT *
FROM employee
WHERE dno <> 10;

SELECT *
FROM employee
WHERE dno ^= 10;

SELECT *
FROM employee
WHERE NOT dno = 10;

--�μ���ȣ�� 10�̰ų� ������ �Ŵ����� ����� ����ϱ�
SELECT *
FROM employee
WHERE dno = 10 OR job ='MANAGER';

--�޿��� 1000���� 1500 ������ ��� ����ϱ�
SELECT *
FROM employee
WHERE salary >=1000 AND salary <=1500; 

-- �޿��� 1000�̸��̰ų� 1500 �ʰ��� ��� ����ϱ�
SELECT *
FROM employee
WHERE salary < 1000 OR salary > 1500;

-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT *
FROM employee
WHERE commision = 300 OR commision = 500 OR commision = 1400;

--�޿��� 1000���� 1500 ������ ��� ����ϱ�
SELECT *
FROM employee
WHERE salary BETWEEN 1000 AND 1500; 

-- �޿��� 1000�̸��̰ų� 1500 �ʰ��� ��� ����ϱ�
SELECT *
FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500; 

SELECT *
FROM employee
WHERE salary < 1000 OR salary > 1500;

-- 1982�⵵�� �Ի��� ��� ����ϱ�
SELECT *
FROM employee
WHERE hiredate >= '1982/01/01' AND hiredate <= '1982/12/12';

SELECT *
FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/12';

-- Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ��� ���
SELECT *
FROM employee
WHERE commision IN(300,500,1400);

-- Ŀ�̼��� 300, 500, 1400�� �ƴ� ��� ���
SELECT *
FROM employee
WHERE commision NOT IN(300,500,1400);

SELECT *
FROM employee
WHERE NOT commision IN(300,500,1400);

SELECT *
FROM employee
WHERE commision!=300 AND commision!=500 AND commision!=1400;

SELECT *
FROM employee
WHERE commision^=300 AND commision^=500 AND commision^=1400;

SELECT *
FROM employee
WHERE commision<>300 AND commision<>500 AND commision<>1400;

--�̸��� F�� �����ϴ� ��� ����ϱ�
SELECT *
FROM employee
WHERE ename = 'FORD';

SELECT *
FROM employee
WHERE ename LIKE 'F%';

--�̸��� �� ��° ���ڰ� 'A'�� ��� ����ϱ�
SELECT *
FROM employee
WHERE ename LIKE '_A%';

-- �̸��� �� ��° ���ڰ� 'A'�� ��� ����ϱ�
SELECT *
FROM employee
WHERE ename LIKE '__A%';

-- �̸��� �� ��° ���ڰ� 'A'�� ��� ����ϱ�
SELECT *
FROM employee
WHERE ename NOT LIKE '%A%';

-- ����� �̸�, �����ȣ, Ŀ�̼��� ����ϱ�
SELECT ename, eno, NVL(commision,0) AS Ŀ�̼�, dno
FROM employee;

--Ŀ�̼��� NULL�� �ƴ� ��� ����ϱ�
SELECT *
FROM employee
WHERE commision IS NOT NULL;

--Ŀ�̼��� �޴� ����� ���
SELECT *
FROM employee
WHERE commision > 0;

--�޿��� ������������ ��� ���
SELECT *
FROM employee
ORDER BY salary;

--�޿��� ������������ ��� ���
SELECT *
FROM employee
ORDER BY salary DESC;

-- ����� �̸��� ������������ �����ϱ�
SELECT *
FROM employee
ORDER BY ename;

-- ����� �̸��� ������������ �����ϱ�
SELECT *
FROM employee
ORDER BY ename DESC;

-- �ֱٿ� �Ի��� ��������� �����ϱ�
SELECT *
FROM employee
ORDER BY hiredate DESC;

--�޿��� ���� ������, �̸��� ABC������ �����ϱ�
SELECT *
FROM employee
ORDER BY salary DESC, ename ASC;

-- $300�� �޿� �λ��� ����� �� ����� �̸�, �޿�, �λ�� �޿��� ����Ͻÿ�.

SELECT ename, salary, salary+300 �λ�ȱ޿�
FROM employee;

SELECT ename, salary, salary+300 AS �λ�ȱ޿�
FROM employee;

SELECT ename, salary, salary+300 AS "�λ�ȱ޿�"
FROM employee;

--����� �̸�, �޿�, ���� �Ѽ����� �� ������ ���� �ͺ��� ���� ������ ��½ÿ�. ���� �Ѽ����� ���޿� 12�� ���� �� $100�� �󿩱��� ���ؼ� ����Ͻÿ�.
SELECT ename, salary, salary*12+100 �����Ѽ���
FROM employee
ORDER BY salary*12+100 DESC;

SELECT ename, salary, salary*12+100 �����Ѽ���
FROM employee
ORDER BY �����Ѽ��� DESC;

SELECT ename, salary, salary*12+100 AS �����Ѽ���
FROM employee
ORDER BY �����Ѽ��� DESC;

SELECT ename, salary, salary*12+100 AS "�����Ѽ���"
FROM employee
ORDER BY "�����Ѽ���" DESC;


--�޿��� 2000�� �Ѵ� ����� �̸��� �޿��� �޿��� ���� �ͺ��� ���� ������ ����Ͻÿ�.
SELECT ename, salary
FROM employee
WHERE salary > 2000
ORDER BY salary DESC;

--�����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����Ͻÿ�
SELECT ename, dno
FROM employee
WHERE NOT eno != 7788;

SELECT ename, dno
FROM employee
WHERE NOT eno ^= 7788;

SELECT ename, dno
FROM employee
WHERE NOT eno <> 7788;

--�޿��� 2000���� 3000 ���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����Ͻÿ�.
SELECT ename, salary
FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

SELECT ename, salary
FROM employee
WHERE salary <2000 OR salary > 3000;   
