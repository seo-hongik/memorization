--4�� ���� 1�� ������� �޿� �ְ�� ������ �Ѿ� �� ��ձ޿��� ����Ͻÿ�
--�÷��� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø� �Ͻÿ�

SELECT MAX(salary) AS Maximun , MIN(salary) AS Minimum , SUM(Salary) AS Sum, ROUND(AVG(salary)) AS Average
FROM employee;


--4�� ���� 2�� �� ��� ���� �������� ���� �ְ�, ������ ,�Ѿ� �� ��վ��� ����Ͻÿ� . 
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�


SELECT job, MAX(salary)AS Maximun  , MIN(salary)AS Minimum , SUM(Salary) AS Sum , ROUND(AVG(salary))AS Average
FROM employee
GROUP BY job;

--4�� ���� 3�� ��� ������������ ������� ����Ͻÿ� Į����Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.


SELECT job, COUNT(*)AS �����
FROM employee
GROUP BY job;

--4�� ����4�� ����� ���� �����Ͻÿ� Į������ ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�

SELECT COUNT(job)
FROM employee
GROUP BY job;


--4�� ���� 5�� ��� ����� �޿� �ְ�� �������� ������ ����Ͻÿ�. Į���� ��Ī�� ���ȭ��� �����ϰ� �����Ͻÿ�


SELECT MAX(salary)-MIN(salary) AS ����
FROM employee;

--********4�� ���� 6�� ����(������) ����� �����޿��� ����Ͻÿ� ��縦 �˼� ���� ����� ���� �޿��� 2000�̸��� �׷��� ���ܽ�Ű�� 
-- ����� �޿��� ���� ������������ �����Ͽ� ����Ͻÿ�
SELECT job, 
FROM employee
GROUP BY job



--4�� ���� 7�� �� �μ��� ���ؼ� �μ���ȣ ����� �μ� ���� ��� ����� ��� �޿��� ����Ͻÿ�
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
--��� �޿��� �Ҽ��� ��° �ڸ��� �ݿø��Ͻÿ�

SELECT dno,COUNT(job) "Number of People", ROUND(AVG(Salary),2) "Salary"
FROM employee
GROUP BY dno
ORDER By dno;

--**4�� - ���� 8�� �� �μ��� ���ؼ� �μ���ȣ �̸� ������ ����� �μ����� ��� ����� ��� �޿��� ����Ͻÿ�
--Į���� ��Ī�� ȭ��� �����ϰ� �����ϰ� ��� �޿��� ������ �ݿø��Ͻÿ�

SELECT dname, loc AS location
FROM department;



--4��- ���� 9�� ������ ǥ���� ���� �ش� ���ǿ� ���� �μ���ȣ�� �޿��� �μ� 10,20,30, �� �޿� �Ѿ��� ���� ����Ͻÿ�
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�

SELECT dno 
FROM department
WHERE 
    emp IN( SELECT SUM (salary) FROM employee) ;






