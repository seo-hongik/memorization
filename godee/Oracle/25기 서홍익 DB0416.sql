SELECT *
FROM department;

SELECT *
FROM employee;

--ī��þȰ�
SELECT *
FROM department,employee;

--EQUI JOIN �� ������� �Ҽӵ� �μ� ���� ����ϱ� 
SELECT *
FROM employee, department
WHERE employee.dno = department.dno;

--EQUI JOIN �����ȣ, ����̸� , �ҼӺμ��� ����ϱ�
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno;

--EQUI JOIN scott �����ȣ, ����̸� , �ҼӺμ��� ����ϱ� 
SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--���ǻ���
SELECT eno, ename, dname, dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--�÷��� �տ� ���̺�� ����ϱ�
SELECT employee.eno, employee.ename, department.dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--�κ������� �÷��� �տ� ���̺� ����ϱ� 

SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--���̺� ��Ī����ϱ�(��Ī�� ���̺�� ȥ�����)

SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
AND eno=7788;


--���ǻ���

SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e NATURAL JOIN department d
WHERE e.eno=7788;


--���� �÷��� ���̺� ��Ī�� ������� ���� ���(NATURAL JOIN�� �� ���� ���� �ɷ������� ��Ī�� ����)
SELECT e.eno, e.ename, d.dname, dno
FROM employee e NATURAL JOIN department d
WHERE e.eno=7788;

--USING �� ����ϱ�

SELECT e.eno, e.ename, d.dname, dno
FROM employee e JOIN department d
USING(dno)
WHERE e.eno=7788;

--ON �� ����ϱ�  (e.dno�� d.dno�� ��ġ�ϱ� ON�� ����ϱ�)
SELECT e.eno, e.ename, d.dname, e.dno 
FROM employee e JOIN department d
ON e.dno = d.dno
WHERE e.eno=7788;


--ON �� ����ϱ� ����  (e.dno�� d.dno�� ��ġ�ϱ� ON�� ����ϱ�)
SELECT e.eno, e.ename, d.dname, dno 
FROM employee e JOIN department d
ON e.dno = d.dno
WHERE e.eno=7788;



--������� �޿� ��� ����ϱ� 
desc salgrade;

SELECT ename, salary, grade 
FROM employee, salgrade 
WHERE salary BETWEEN losal AND hisal;

SELECT ename, salary, grade 
FROM employee, salgrade 
WHERE salary>=losal AND salary<=hisal;




--3���� ���̺� �����ϱ� 

SELECT e.ename, d.dname, e.salary, s.grade 
FROM employee e,department d ,salgrade s 
WHERE e.dno =d.dno
AND salary BETWEEN losal AND hisal;

--WHERE ���� ����� SELF JOIN
SELECT employees.ename"����̸�", manager.ename"���ӻ���̸�"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

--JOIN ~ON ���� ����� SELF JOIN  // ||(concat)

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno;

--���� ���(�Ŵ���)�� ���� ����� �̸��� ����ϱ� 

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

-- ���ǻ���

SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager(+) = manager.eno;

--���� ���(�Ŵ���)�� ���� ����� �̸��� ����ϱ�
SELECT employees.ename || '�� ���� �����' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

--left OUTER JOIN ���� ������ ������ null righter outer JOIN ��� ���� �������� null


