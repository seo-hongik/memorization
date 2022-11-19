-- SCOTT�� ������ �μ����� �ٹ��ϴ� ��� ���
SELECT ename,dno
FROM   employee
WHERE  dno=(
            SELECT dno
            FROM employee
            WHERE ename='SCOTT'
            );

SELECT ename, dno
FROM employee
WHERE ename='SCOTT';



--�ּ� �޿��� �޴� ����� �̸� ������ �޿� ����ϱ�
SELECT ename, job ,salary
FROM employee
WHERE salary=(
            SELECT MIN(salary)
            FROM employee 
            );

-- �μ���ȣ�� 30���� ����� �ּұ޿��� ���� �� �μ��� �ּ� �޿��� ���� �ּұ޿�(950)���� ū �μ��� ����ϱ� 
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno
HAVING MIN(salary)>(
                    SELECT MIN(salary)
                    FROM employee
                    WHERE dno=30                
                  );
                  
                  
--IN ������ ����ϱ� 
SELECT eno, ename
FROM employee
WHERE salary IN(
            SELECT MIN(salary)
            FROM employee
            GROUP BY dno
                );


SELECT MIN(salary)
FROM employee
GROUP BY dno;

--������ SAESMAN �� �ƴϸ鼭 �޿��� ������ SALESMAN ���� ���� ��� ����ϱ� 

--�ִ� �޿� 
SELECT eno, ename, job, salary
FROM employee
WHERE salary <ANY(
            SELECT salary
            FROM employee
            WHERE job='SALESMAN'
            )
            
AND job != 'SALESMAN';

SELECT MAX(salary)
FROM employee
WHERE job='SALESMAN';

--�ּұ޿�
SELECT MIN(salary)
FROM employee
WHERE job='SALESMAN';

-- ������ 'SALESMAN'�� �ƴϸ鼭 ������ SALESMAN�� ��� ���� �޿��� ���� ��� ����ϱ�

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL(
            SELECT MIN(salary)
            FROM employee
            WHERE job='SALESMAN'
            )
AND job!='SALESMAN';