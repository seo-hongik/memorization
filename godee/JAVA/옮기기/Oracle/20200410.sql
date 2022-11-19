SHOW USER;
DESC employee;

-- �ݿø� �ϱ�
SELECT  ROUND(1234.5678), ROUND(1234.5678,2), ROUND(1234.5678,-1)
FROM dual;

-- �߶󳻱�
SELECT TRUNC(1234.5678), TRUNC(1234.5678, 2), TRUNC(1234.5678, -1)
FROM dual;

-- ������ ��ȯ�ϱ�
SELECT MOD(31,2), MOD(31,5), MOD(31,8)
FROM dual;

-- ��� ����� �޿��� 500���� ���� �������� ������ּ���.
SELECT ename,salary,MOD(salary, 500)as "������"
FROM employee;

-- ���� ��¥ ǥ���ϱ�
SELECT SYSDATE
FROM dual;

-- ��¥ ����ϱ�
SELECT SYSDATE - 1 ����, SYSDATE ����, SYSDATE + 1 ����
FROM dual;

-- ��� ������� �ٹ� �ϼ� ����ϱ�
SELECT eno, ename, dno, ROUND(SYSDATE-hiredate) AS �ٹ��ϼ�
FROM employee;

-- Ư�� ��¥���� ���� �������� ������ ��¥ ���ϱ�
SELECT hiredate, TRUNC(hiredate, 'MONTH'), ROUND(hiredate, 'MONTH')
FROM employee;

-- ��� ������� �ٹ� ������ ����ϱ�
SELECT eno, ename, dno, ROUND(MONTHS_BETWEEN(SYSDATE,hiredate)) AS "�ٹ� ������"
FROM employee;

SELECT eno, ename, hiredate, ADD_MONTHS(hiredate, 6) as "�Ի� �� 6���� ��"
FROM employee;

-- ������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
SELECT SYSDATE, NEXT_DAY(SYSDATE, 7)
FROM dual;

SELECT SYSDATE, LAST_DAY(SYSDATE)
FROM dual;

-- �� ������� �Ի��� ���� ������ �� ���ϱ�
SELECT eno,ename,dno,hiredate,LAST_DAY(hiredate) as "��������"
FROM employee;

SELECT ename, hiredate, TO_CHAR(hiredate, 'YY/MM'), TO_CHAR(hiredate, 'YYYY/MM/DD DAY')
FROM employee;

-- ���� ��¥�� �ð� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY,MM.DD HH:MI:SS'), TO_CHAR(SYSDATE, 'YYYY,MM/DD HH24:MI:SS')
FROM dual;

-- �� ����� �޿��� ����ϸ鼭 ��ȭ��ȣ �����̱�
SELECT ename, TO_CHAR(salary,'L999,999'),TO_CHAR(salary,'L000,000')
FROM employee;

-- 1981�� 2�� 20�Ͽ� �Ի��� ����� �˻��ϱ�
SELECT ename, hiredate, TO_DATE(hiredate, 'YY/MM/DD')
FROM employee
WHERE hiredate= TO_DATE(19810220, 'YYYY/MM/DD');

-- ��ġ ���·� ��ȯ�� �� ����
SELECT TO_NUMBER('100,000', '999,999') - TO_NUMBER('50,000', '999,999') AS �ݾ�
FROM dual;

-- NULL�� ó���ϱ�
SELECT ename, job, NVL(commision, 0), salary*12+NVL(commision,0)
FROM employee
ORDER BY job;

-- NULL�� ó���ϱ�
SELECT ename, job, salary, commision, NVL2(commision, salary*12+commision ,salary*12)
FROM employee;

-- NULL�� ó���ϱ�
SELECT NULLIF('A', 'A'), NULLIF('A', 'B')
FROM dual;

-- NULL �� ó���ϱ�
-- ���� ��� expr�� ��� NULL�̸� 0�� ����մϴ�.
SELECT ename, salary, commision, COALESCE(COMMISION, SALARY)
FROM employee
ORDER BY job;

-- DECODE�� �μ� �̸� ����ϱ�
SELECT ename, dno,
        DECODE (dno,    10,'ACCOUNTING',
                        20,'RESEARCH',
                        30,'SALES',
                        40,'OPERATIONS',
                        'DEFAULT'
                        ) as "dname"
FROM employee
ORDER BY dno;

-- �μ� �̸� ����ϱ�
SELECT ename, dno, 
       CASE 
            WHEN dno=10 THEN 'ACCOUNTING'
            WHEN dno=20 THEN 'RESEARCH'
            WHEN dno=30 THEN 'SALES'
            ELSE 'DEFAULT'
            END AS "dname"       
FROM employee
ORDER BY dno;