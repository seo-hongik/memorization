-- �޿�(salary)�� 1500 �̻��� ��� ����ϱ�

SELECT *
FROM employee
WHERE salary >= 1500;

--10�� �μ� �Ҽ� ��� ����ϱ� 

SELECT *
FROM employee
WHERE dno=10;

--�̸��� SCOTT�� ��� ����ϱ�

SELECT *
FROM employee
--WHERE ename='scott';
--WHERE ename="SCOTT";
WHERE ename='SCOTT';

--�Ի���(hiredate)�� 1981�� 1�� 1�� ('1981/01/01') ����(����)�� �Ի��� ����� ����ϱ�

SELECT *
FROM employee
WHERE hiredate <= '1981/01/01';

-- �μ� ��ȣ�� 10�̰� ������ 'manager'�� ����� ����ϱ�
SELECT *
FROM employee
WHERE  dno=10 AND job='MANAGER';

--10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ����� ���� ����ϱ�
SELECT *
FROM employee
WHERE dno=20 or dno=30 or dno=40; 

SELECT *
FROM employee
WHERE dno!=10; 


SELECT *
FROM employee
WHERE dno<>10; 


SELECT *
FROM employee
WHERE dno^=10;


SELECT *
FROM employee
WHERE NOT dno=10;

--�μ� ��ȣ�� 10�̰ų� ������'MANAGER'�� ����� ����ϱ�

SELECT *
FROM employee
WHERE dno=10 OR job='MANAGER';

--�޿��� 1000���� 1500 ������ �������ϰ�
SELECT *
FROM employee
WHERE SALARY >= 1000 AND SALARY <= 1500;

--�޿��� 1000�̸� 1500�ʰ��� ��� ����ϱ�
SELECT *
FROM employee
WHERE salary <1000 OR salary>1500;

--Ŀ�̼��� 300 �̰ų� 500 �̰ų� 1400�� �������ϱ�

SELECT *
FROM employee
WHERE commision= 300 OR commision =500 OR commision =1400;

--�޿��� 1000�̻� 1500������ �������ϱ�

SELECT *
FROM employee
WHERE salary BETWEEN 1000 AND 1500;

--�޿��� 1000�̸� 1500�ʰ��� ��� ���
SELECT *
FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

--�޿��� 1000�̸� 1500�ʰ��� ��� ���
SELECT *
FROM employee
WHERE salary <1000 or salary>1500;

--1982�⵵�� �Ի��� ��� ����ϱ�
SELECT *
FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

--1982�⵵�� �Ի��� ��� ����ϱ�
SELECT *
FROM employee
WHERE hiredate >= '1982/01/01' AND hiredate <= '1982/12/31';


--Ŀ�̼��� 300 �̰ų� 500 �̰ų� 1400�� �������ϱ�

SELECT *
FROM employee
WHERE commision IN(300,500,1400);

--Ŀ�̼��� 300,500,1400�� �ƴ� ��� ��� ����ϱ�
SELECT *
FROM employee
WHERE commision NOT IN(300,500,1400);

SELECT *
FROM employee
WHERE commision !=300 AND commision != 500 AND commision != 1400;

SELECT *
FROM employee
WHERE commision <> 300 AND commision <> 500 AND commision <> 1400;

SELECT *
FROM employee
WHERE commision ^= 300 AND commision ^= 500 AND commision ^= 1400;

SELECT *
FROM employee
WHERE NOT commision = 300 AND NOT commision = 500 AND NOT commision = 1400;


--�̸��� 'F'�� �����ϴ� ��� ����ϱ� 
SELECT *
FROM employee
WHERE ename LIKE 'F%';

--�̸��� 'M'�� ���ԵǴ� ��� ����ϱ� 

SELECT *
FROM employee
WHERE ename LIKE '%M%';

--�̸��� 'N'���� ������ ��� ����ϱ� 
SELECT *
FROM employee
WHERE ename LIKE '%N';

--�̸��� �� ��° ���ڰ� 'A'�� ��� ����ϱ� 

SELECT *
FROM employee
WHERE ename LIKE '_A%';

--�̸��� ����° ���ڰ� 'A'�� ��� ����ϱ�

SELECT *
FROM employee
WHERE ename LIKE '__A%';

--�̸��� ���ڰ� 'A'�� ���Ե� ��� �����ϰ� ����ϱ�

SELECT *
FROM employee
WHERE ename NOT LIKE '%A%' ;

--����� �̸�, �����ȣ, Ŀ�̼�, �μ���ȣ�� ����ϱ�

SELECT ename, eno, commision, dno
FROM employee;


-- Ŀ�̼��� NULL �ƴ� ��� ����ϱ�
SELECT *
FROM employee
-- Ʋ�� WHERE commision = null;
--NULL�� ���� WHERE commision IS NULL;
WHERE commision IS NOT NULL;
--NOT IS �ƴ�

--Ŀ�̼��� �޴� ��� ����ϱ� 

SELECT *
FROM employee  
Where commision>0;

--�޿������� ��� ��� ���������ϱ�

SELECT *
FROM employee
ORDER BY salary ASC; 
-- WHERE �ȵ�--

--�޿�������  ��� ��� ���������ϱ� 
SELECT *
FROM employee
ORDER BY salary DESC; 
--Ʋ�� ORDER BY salary NOT DESC; 

--����� �̸��� ���������̸� �����ϱ�

SELECT *
FROM employee
ORDER BY ename; 
--ORDER BY ename ASC;

--����� �̸��� ������������ �����ϱ�
SELECT *
FROM employee
ORDER BY ename DESC; 

--�ֱٿ� �Ի��� ��������� �����ϱ�
SELECT *
FROM employee
ORDER BY hiredate DESC; 

--�޿��� ���� ������ �̸��� ABC������ �����ϱ�
SELECT *
FROM employee
ORDER BY salary DESC, ename ASC;

--2�� - ���� 1��
SELECT ename, salary, salary+300 
FROM employee;


--���� 2�� ����� �̸� �޿� ���� �Ѽ����� �� ������ ���� �ͺ��� ���������� ����Ͻÿ� 
���� �� ������ ���ۿ� 12�� ������ $100�� �󿩱��� ���ؼ� ����Ͻÿ�
SELECT ename, salary, salary*12+NVL(commision,100) �����Ѽ���
FROM employee
ORDER BY �����Ѽ��� DESC;

--** ���� 3�� �޿��� 2000�� �Ѵ� ����� �̸��� �޿��� �޿��� ���� �ͺ��� ���� ������ ����Ͻÿ�
SELECT ename, salary
FROM employee  
WHERE salary>= 2000
ORDER BY salary desc;

--���� 4�� �����ȣ�� 7788�� ����� �̸��� �μ���ȣ�� ����Ͻÿ�.
SELECT ename, dno
FROM employee
WHERE eno=7788;

--���� 5�� �޿��� 2000���� 3000���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����Ͻÿ�

SELECT ename, salary
FROM employee
WHERE salary NOT between 2000 and 3000;

