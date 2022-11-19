SHOW USER;
DESC employee;
DESC department;
DESC salgrade;

SELECT *
FROM employee;

SELECT *
FROM department;

SELECT ename, salary, dno as �μ�, NVL(commision, 0) AS commision
FROM employee
WHERE ename LIKE '_l%'
ORDER BY dno DESC;

-- 1981�� 2�� 20�Ϻ��� 1981�� 5�� 1�� ���̿� �Ի��� ����� �̸�, ��� ����, �Ի����� ����Ͻÿ�.
SELECT eno, job, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/2/20' AND '1981/5/1';

SELECT eno, job, hiredate
FROM employee
WHERE hiredate >= '1981/2/20' AND hiredate <= '1981/5/1';


-- �μ���ȣ�� 20 �� 30�� ���� ����� �̸��� �μ���ȣ�� ����ϵ� �̸��� ����(��������)���� �����ڼ����� ����Ͻÿ�.
SELECT ename, dno
FROM employee
WHERE dno = 20 or dno =30
ORDER BY ename DESC;

SELECT ename, dno
FROM employee
WHERE dno IN (20, 30)
ORDER BY ename DESC;


-- ����� �޿��� 2000���� 3000 ���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30�� ����� �̸�, �޿��� �μ���ȣ�� ����ϵ� �̸� ��(��������)���� ����Ͻÿ�.
SELECT ename, salary, dno
FROM employee
WHERE salary >=2000 AND salary <= 3000 AND dno IN(20,30)
ORDER BY ename ASC;

SELECT ename, salary, dno
FROM employee
WHERE salary BETWEEN 2000 AND 3000 AND dno IN(20,30)
ORDER BY ename ASC;

-- 1981�⵵�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�.
SELECT ename, hiredate
FROM employee
WHERE hiredate BETWEEN '1981/1/1' AND '1981/12/31';

SELECT ename, hiredate
FROM employee
WHERE hiredate >= '1981/1/1' AND hiredate <= '1981/12/31';

SELECT ename, hiredate
FROM employee
WHERE NOT hiredate < '1981/1/1' AND NOT hiredate > '1981/12/31';


-- ��� ������ ���� ����� �̸��� ��� ������ ����Ͻÿ�
SELECT ename, job
FROM employee
WHERE manager IS NULL;

SELECT ename, job
FROM employee
WHERE manager IS NULL;

-- Ŀ�̼��� ���� �� �ִ� �ڰ��� �Ǵ� ����� �̸�, �޿�, Ŀ�̼��� ����ϵ� �޿� �� Ŀ�̼��� �������� �������� �����Ͽ� ǥ���Ͻÿ�.
SELECT ename, salary, commision
FROM employee
WHERE commision IS NOT NULL
ORDER BY salary DESC, commision DESC;

SELECT ename, salary, commision
FROM employee
WHERE commision >= 0
ORDER BY salary DESC, commision DESC;

SELECT ename, salary, commision
FROM employee
WHERE NOT commision < 0
ORDER BY salary DESC, commision DESC;

SELECT ename, salary, commision
FROM employee
WHERE NOT commision IS NULL
ORDER BY salary DESC, commision DESC;

-- �̸��� �� ��° ���ڰ� R�� ����� �̸��� ǥ���Ͻÿ�.
SELECT ename
FROM employee
WHERE ename LIKE '__R%';

-- �̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸��� ǥ���Ͻÿ�.
SELECT ename
FROM employee
WHERE ename LIKE '%A%E%';

SELECT ename
FROM employee
WHERE NOT(ename NOT LIKE '%A%') OR (ename NOT LIKE '%E%');

SELECT ename
FROM employee
WHERE (ename LIKE '%A%') AND (ename LIKE '%E%');

SELECT ename
FROM employee
WHERE NOT(ename NOT LIKE '%A%') AND NOT (ename NOT LIKE '%E%');

-- ��� ������ �繫��(CLERK) �Ǵ� �������(SALESMAN)�̸鼭 �޿��� $1600, $950, $1300�� �ƴ� ����� �̸�, ������, �޿��� ����Ͻÿ�
SELECT ename, job, salary
FROM employee
WHERE (job='CLERK' OR job='SALESMAN') AND (salary != 1600 AND salary != 950 AND salary != 1300);

SELECT ename, job, salary
FROM employee
WHERE (job='CLERK' OR job='SALESMAN') AND (salary ^= 1600 AND salary ^= 950 AND salary ^= 1300);

SELECT ename, job, salary
FROM employee
WHERE (job='CLERK' OR job='SALESMAN') AND (salary <> 1600 AND salary <> 950 AND salary <> 1300);

SELECT ename, job, salary
FROM employee
WHERE NOT(job!='CLERK' AND job!='SALESMAN') AND (salary != 1600 AND salary != 950 AND salary != 1300);

SELECT ename, job, salary
FROM employee
WHERE NOT(job!='CLERK' AND job!='SALESMAN') AND NOT(salary = 1600 OR salary = 950 OR salary = 1300);

SELECT ename, job, salary
FROM employee
WHERE NOT((job!='CLERK' AND job!='SALESMAN') OR (salary = 1600 OR salary = 950 OR salary = 1300));


-- Ŀ�̼��� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼��� ����Ͻÿ�.
SELECT ename, salary, commision
FROM employee
WHERE commision >= 500;

SELECT ename, salary, commision
FROM employee
WHERE NOT commision < 500;
