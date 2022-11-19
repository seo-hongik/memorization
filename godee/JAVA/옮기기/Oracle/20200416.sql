-- ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��� �޿��� ����Ͻÿ�. 
-- Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�.
SELECT MAX(salary) "Maximun", MIN(salary) "Minimum", SUM(salary)"Sum", ROUND(AVG(salary)) "Average"
FROM employee;

-- �� ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�
SELECT job, MAX(salary) "Maximun", MIN(salary) "Minimum", SUM(salary)"Sum", ROUND(AVG(salary)) "Average"
FROM employee
GROUP BY job;

-- ��� ���� �������� ������� ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
SELECT JOB, COUNT(job) "�����"
FROM employee
GROUP BY job;

--����� ���� �����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
SELECT COUNT(MANAGER) "����"
FROM employee;

-- ��� ����� �޿� �ְ��, �������� ������ ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
SELECT (MAX(salary)-MIN(salary)) "����"
FROM employee;

-- ����(����_�� ����� ���� �޿��� ����Ͻÿ�. ��縦 �� �� ���� ��� �� ���� �޿��� 2000 �̸��� �׷��� ���ܽ�Ű�� ����� �޿��� ���� ������������ �����Ͽ� ����Ͻÿ�.
SELECT job, MIN(salary) "�����޿�"
FROM employee
WHERE MANAGER IS NOT NULL
GROUP BY job
HAVING MIN(salary) >= 2000
ORDER BY MIN(salary) DESC;

-- �� �μ��� ���ؼ� �μ���ȣ, �����, �μ� ���� ��� ����� ��� �޿��� ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
-- ��� �޿��� �Ҽ��� ��° �ڸ��� �ݿø��Ͻÿ�.
SELECT dno, COUNT(dno) as "Number of People", ROUND(AVG(Salary), 2)
FROM employee
GROUP BY dno
ORDER BY dno ASC;

DESC employee;



SELECT job, MIN(salary) "�����޿�"
FROM employee
WHERE MANAGER IS NOT NULL
GROUP BY job
HAVING MIN(salary) > 2000
ORDER BY MIN(salary) DESC;

-- �� �μ��� ���ؼ� �μ���ȣ �̸�, ������, �����, �μ� ���� ��� ����� ��� �޿��� ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��� �޿��� ������ �ݿø��Ͻÿ�.
SELECT dno, COUNT(*) as "Number of People", ROUND(AVG(Salary))
FROM employee
GROUP BY dno
ORDER BY dno ASC;

--������ ǥ���� ���� �ش� ������ ���� �μ���ȣ�� �޿� �� �μ� 10,20,30�� �޿� �Ѿ��� ���� ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
SELECT job, dno, SUM(salary) "�μ� 10", SUM(salary) "�μ� 20", SUM(salary) "�μ� 30", SUM(salary)
FROM employee
GROUP BY job, dno
ORDER BY dno;

SELECT *
FROM department;

SELECT *
FROM employee;

SELECT *
FROM employee, department;

-- �� ������� �Ҽӵ� �μ����� ����ϱ�
SELECT *
FROM employee, department
WHERE employee.dno = department.dno;

-- �����ȣ, ����̸�, �ҼӺμ��� ����ϱ�
SELECT eno, ename ,dname
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- ���ǻ���
SELECT eno, ename ,dname, dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- �÷��� �տ� ���̺�� ����ϱ�
SELECT employee.eno, employee.ename ,department.dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- �κ������� �÷��� �տ� ���̺� ����ϱ�
SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- ���̺� ��Ī����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
AND eno = 7788;


-- ���� �÷��� ���̺� ��Ī�� ������� ���� ���
SELECT e.eno, e.ename, d.dname, dno
FROM employee e NATURAL JOIN department d
WHERE e.eno=7788;

-- USING �� ����ϱ�
SELECT e.eno, e.ename, d.dname, dno
FROM employee e JOIN department d
USING (dno)
WHERE e.eno=7788;

-- ON �� ����ϱ�
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e JOIN department d
ON e.dno = d.dno
WHERE e.eno = 7788;

-- ������� �޿� ��� ����ϱ�
SELECT ename, salary, grade
FROM employee, salgrade
WHERE salary BETWEEN losal AND hisal;

SELECT ename, salary, grade
FROM employee, salgrade
WHERE salary >= losal AND salary <= hisal;

-- 3���� ���̺� �����ϱ�
SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary BETWEEN losal AND hisal;

-- WHERE ���� ����� SELF JOIN
SELECT employees.ename "����̸�", manager.ename "���ӻ���̸�"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

-- JOIN ~ ON���� ����� SELF JOIN
SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno;

-- ���ӻ�� (�Ŵ���)�� ���� ����� �̸��� ����ϱ�
SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;