
-- ��ҹ��� ��ȯ�Լ� ����ϱ�
SELECT 'Oracle mania',
        upper('Oracle mania'),
        LOWER('Oracle mania'),
        INITCAP('oracle mania')
FROM dual;

-- ��ҹ��� ��ȯ �Լ��� �÷��� ����ϱ�
SELECT ename, LOWER(ename), job, INITCAP(job)
FROM employee;

-- scott ����� �ҹ��ڷ� �˻��ϱ�
SELECT *
FROM employee
WHERE LOWER(ename) = 'scott'; 

-- scott ����� �̸��� ù���ڸ� �빮�ڷ� �˻��ϱ�
SELECT *
FROM employee
WHERE INITCAP(ename) = 'Scott'; 

-- SCOTT ��� �˻�
SELECT *
FROM employee
WHERE ename = 'SCOTT';


-- ������ �ѱ��� ���̸� ���ϱ�
SELECT LENGTH('OracleMania'), LENGTHB('����Ŭ���Ͼ�')
FROM dual;

-- ������ �ѱ��� ����Ʈ �� ���ϱ�
SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ���Ͼ�')
FROM dual;

-- CONCAT�� ���ڿ��� �����ϴ� �Լ��Դϴ�.
-- ���� �����ϱ�
SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania')
FROM dual;

--SUBSTR�� ���� ���ڿ����� �Ϻθ� �����մϴ�.
-- ���ڿ��� ���� ��ġ���� ������ŭ�� ���ڸ��� ���ɴϴ�.
-- SUBSTR(���, ������ġ, ������ ����)

-- ���ڿ��� �Ϻθ� �����ϱ�
SELECT SUBSTR('Oracle mania', 4,3), SUBSTR('Oracle mania', -6,3)
FROM dual;

--�̸��� N���� ������ ���ǥ���ϱ�
SELECT *
FROM employee
WHERE (SUBSTR(ename, -1,1)='N');

SELECT *
FROM employee
WHERE ename LIKE '%N';

-- 87�⵵�� �Ի��� ���ǥ���ϱ�
SELECT ename
FROM employee
WHERE hiredate >= '1987/1/1' AND hiredate <= '1987/12/31';

SELECT ename
FROM employee
WHERE SUBSTR(hiredate,1,2)= '87';

SELECT ename
FROM employee
WHERE hiredate LIKE '87%';

SELECT ename
FROM employee
WHERE hiredate BETWEEN '87/01/01' AND '87/12/31';

-- ���� �����ϱ�
SELECT  SUBSTR('Oracle mania', 4, 3), SUBSTRB('Oracle mania', 4, 3)
FROM dual;

-- �ѱ� �����ϱ�
SELECT  SUBSTR('����Ŭ�ŴϾ�', 3, 4), SUBSTRB('����Ŭ�ŴϾ�', 3, 5)
FROM dual;

-- INSTR �Լ��� ���ڿ� ������ �ش� ���ڰ� ��� ��ġ�� �����ϴ��� �˷��ݴϴ�.
-- INSTR(���,ã������,������ġ, �� ��° �߰�) -- ������ġ�� �� ��° �߰��� ������� ������ ��� 1�� ����.

-- ���� ��ġ ã��
SELECT INSTR('Oracle mania', 'a')
FROM dual;

--Ư�� ��ġ ������ ���� ��ġ ã��
SELECT INSTR('Oracle mania', 'a', 5, 2)
FROM dual;

SELECT INSTRB('Oracle mania', 'a')
FROM dual;

--����° �ڸ��� 'R'�� ��� �˻��ϱ�
SELECT *
FROM employee
WHERE SUBSTR(ename, 3, 1) = 'R';

SELECT *
FROM employee
WHERE INSTR(ename, 'R', 3, 1)=3;

-- LPAD(LEFT PADDING)�Լ��� �÷��̳� ��� ���ڿ��� ��õ� �ڸ������� �����ʿ� ��Ÿ����,  ���� ���� �ڸ��� Ư�� ��ȣ�� ä��ϴ�.

-- ���� �ڸ��� Ư�� ��ȣ�� ä���
SELECT LPAD(salary,10,'**')
FROM employee;

-- RPAD(RIGHT PADDING)�Լ��� �÷��̳� ��� ���ڿ��� ��õ� �ڸ������� ���ʿ� ��Ÿ����,  ���� ������ �ڸ��� Ư�� ��ȣ�� ä��ϴ�.

-- ������ �ڸ��� Ư�� ��ȣ�� ä���
SELECT RPAD(salary,6,'**')
FROM employee;

--LTRIM �Լ��� ���ڿ��� ����(��)�� ���� ���ڵ��� �����ϰ�,  RTRIM �Լ��� ������(��)�� ���� ���ڸ� �߶���ϴ�.

-- ���� ���� �����ϱ�
SELECT '     Oracle mania     ', LTRIM('     Oracle mania     '), RTRIM('     Oracle mania     ')
FROM dual;

-- Ư�� ���� �����ϱ�
SELECT  TRIM(' Oracle mania '), TRIM('O' from 'Oracle mania')
FROM dual;

-- �յ� ���� �����ϱ�
SELECT TRIM('     Oracle mania     ')
FROM dual;