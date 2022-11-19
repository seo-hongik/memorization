--�ݿø��ϱ� 

SELECT  ROUND(1234.5678),
        ROUND(1234.5678,2),
        ROUND(1234.5678,-1)
FROM dual;

--�߶󳻱�

SELECT  TRUNC (1234.5678),
        TRUNC (1234.5678,2),
        TRUNC (1234.5678,-1)
FROM dual;


--������ ��ȯ�ϱ� 

SELECT  MOD(31,2),
        MOD(31,5),
        MOD(31,8)

FROM dual;

--��� ����� �޿��� 500���� ���� �������� ������ּ���
--�̸� , �޿� , ������ 

SELECT ename �̸�, salary �޿�, MOD(salary,500) AS ������
FROM employee;

--���� ��¥ �����ϱ�

SELECT SYSDATE
FROM dual;

--��¥ ����ϱ�

SELECT SYSDATE-1 ����, SYSDATE ���� , SYSDATE+1 ����
FROM dual;

--��� ������� �ٹ��ϼ� ����ϱ�

SELECT eno, ename, dno, ROUND(SYSDATE -hiredate) AS �ٹ��ϼ�
FROM employee;

--Ư�� ��¥���� ���� �������� ������ ��¥ ���ϱ� 

SELECT hiredate, TRUNC(hiredate,'MONTH')
FROM employee;

-- �� ������� �ٹ��� ������ ���ϱ� 

SELECT eno, ename, dno, TRUNC(MONTHS_BETWEEN(SYSDATE,hiredate)) "�ٹ�������"
FROM employee;

--�� ������� �Ի����� 6������ ���� ��¥ ���ϱ�

SELECT eno, ename, dno, hiredate, ADD_MONTHS(hiredate,6) AS "�Ի��� 6����"
FROM employee;

--������ �������� ���ʷ� �����ϴ� ����� ���ϱ�
--����Ŭ�� �Ͽ����� 1�̹Ƿ� ������� 7
--�ٸ��������� �Ͽ�����0 �̹Ƿ� ������� 6

SELECT SYSDATE, NEXT_DAY(SYSDATE,'�����')
FROM dual;

SELECT SYSDATE, NEXT_DAY(SYSDATE,7)
FROM dual;

--�� ������� �Ի��� ���� ������ �� ���ϱ�

SELECT eno, ename, dno, hiredate, LAST_DAY(hiredate) AS ��������
FROM employee;

-- ��¥ �Լ� ����ϱ� 

SELECT ename, hiredate,
        TO_CHAR(hiredate, 'YY/MM'),
        TO_CHAR(hiredate, 'YYY/MM/DD DAY')
FROM employee;

-- ���� ��¥�� �ð� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS'),
        TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS')
FROM dual;

--�� �ڿ��� �޿��� ����ϸ鼭 ��ȭ��ȣ �����̱� 
SELECT ename,
        TO_CHAR(salary, 'L999,999'),
        TO_CHAR(salary, 'L000,000')
FROM employee;

--8881981�� 2�� 20�Ͽ� �Ի��� ����� �˻��ϱ� 

SELECT eno, ename,hiredate
FROM employee
WHERE hiredate ='81/02/20';

SELECT eno, ename,hiredate
FROM employee
WHERE hiredate = TO_DATE(19810220,'YYYYMMDD');


--***��ġ ���·� ��ȯ�� �� ����

SELECT TO_NUMBER('100,000','999,999')- TO_NUMBER('50,000','999,999') AS �޾�
FROM dual;

--NULL �� ó���ϱ� 

SELECT ename, job, NVL(commision,0), salary*12+NVL(commision,0)
FROM employee
ORDER BY job;

--NULL �� ó���ϱ�


SELECT ename, job, salary, commision, NVL2(commision,salary*12+commision,salary*12) 
FROM employee
ORDER BY job;

--NULL �� ó���ϱ� (ex �ڵ��Է� ����) NULLIF�� ���� �ƴҰ�� ù��° �� ��ȯ
SELECT NULLIF('A','A'), NULLIF('A','B')
FROM dual;


--NULL�� ó���ϱ� 
--���� Ŀ�̼ǰ� �޿��� ��� NULL�̸� 0�� ����մϴ�.
SELECT  commision, salary, ename , COALESCE(commision,salary,0)
FROM employee
ORDER BY job;

--�μ��̸� ����ϱ� 

SELECT ename, dno, 
        DECODE(
            dno,10,'ACCONTING',
                20,'RESERCH',
                30,'SALES',
                40,'OPERATIONS',
                'DEFAULT'
        ) AS dname
FROM employee
ORDER BY dno;

--�μ��̸� ����ϱ� 

SELECT ename, dno,
    CASE 
        WHEN dno=10 THEN'ACCOUNTING'
        WHEN dno=20 THEN'RESERCH'
        WHEN dno=30 THEN'SALES'
        WHEN dno=40 THEN'OPERATIONS'
        ELSE 'DEFAULT'
    END AS dname
FROM employee
ORDER BY dno;
