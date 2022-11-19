--2�� ���� 6�� 1981�� 2�� 20�� ���� 1981�� 5�� 1�� ���̿� �Ի��� ����� �̸� ��� ���� �Ի����� ����Ͻÿ�

SELECT ename, job, hiredate
FROM employee
WHERE hiredate >= '81/02/20' AND hiredate <= '81/05/01';

--2�� ���� 7�� �μ���ȣ�� 20�� 30�� ���� ����� �̸��� �μ���ȣ�� ����ϵ� �̸��� ����(��������)���� �����ڼ����� ����Ͻÿ�

SELECT ename, dno
FROM employee
WHERE dno IN(20,30)
ORDER BY ename DESC;

--2�� ���� 8�� ����� �޿��� 2000���� 3000���̿� ���Եǰ� �μ���ȣ�� 20�Ǵ� 30�� ����� �̸� �޿��� �μ���ȣ�� ����ϵ� �̸���(��������)���� ����Ͻÿ�

SELECT ename, salary, dno
FROM employee
WHERE salary >=2000 AND salary <= 3000 AND (dno=20 OR dno=30)
ORDER BY ename;

SELECT ename, salary, dno
FROM employee
WHERE salary >=2000 AND salary <= 3000 AND dno IN(20,30)
ORDER BY ename;

SELECT ename, salary, dno
FROM employee
WHERE salary >=2000 AND salary <= 3000 AND dno!=10
ORDER BY ename;



--2�� ���� 9�� 1981�⵵�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�
SELECT ename, hiredate
FROM employee
WHERE hiredate >= '1981/01/01' AND hiredate <= '1981/12/31'
ORDER by hiredate ASC;


DESC employee;

--2�� ���� 10�� ��� ������ ���� ����� �̸��� �������� ����Ͻÿ�
SELECT ename, job
FROM employee
WHERE manager IS NULL;

--2�� ���� 11�� Ŀ�̼��� ���� �� �ִ� �ڰ��� �Ǵ� ����� �̸� �޿� Ŀ�̼��� ����ϵ� �޿��� ���̼��� �������� �������� �����Ͽ� ǥ���Ͻÿ�

SELECT ename, salary, commision
FROM employee
WHERE commision IS NOT NULL 
ORDER BY salary DESC;

--2�� ���� 12�� �̸��� ����° ���ڰ� R�λ���� �̸��� ǥ���Ͻÿ�


SELECT ename
FROM employee
WHERE ename LIKE '__r%';

--2���� 13�� �̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸��� ǥ���Ͻÿ�

SELECT ename
FROM employee
WHERE ename LIKE '%A%' AND ename LIKE '%E%' ;

--*****2���� 14�� ��� ������ �繫��(clerk) �Ǵ� ������� (salesman)�̸鼭 �޿��� $1600,$950,$1300�� �ƴ� ����� �̸� ������ �޿��� ����Ͻÿ�

SELECT ename, job , salary
FROM employee
WHERE salary !=1600 OR salary != 950 OR salary != 1300 AND job = 'clerk' AND job ='salesman';


--2���� 15�� Ŀ�̼��� $500�̻��� ����� �̸��� �޿��� Ŀ�̼��� ����Ͻÿ�

SELECT ename, salary, commision
FROM employee
WHERE commision >= 500;

