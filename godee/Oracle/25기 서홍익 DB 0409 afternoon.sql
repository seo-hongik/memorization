--��ҹ��� ��ȯ�Լ� ����ϱ� 
SELECT 'Oracle mania',
        UPPER('Oracle mania'),
        LOWER('Oracle mania'),
        INITCAP('Oracle mania')
FROM dual;

--��ҹ��� ��ȯ �Լ��� �÷��� ����ϱ�
SELECT ename,LOWER(ename), job, INITCAP(job)
FROM employee;

--SCOTT����� �ҹ��ڷ� �˻��ϱ�

SELECT *
FROM employee
WHERE LOWER(ename)='scott';

--SCOTT ����� �̸��� ù���ڸ� �빮�ڷ� �˻��ϱ�

SELECT *
FROM employee
WHERE INITCAP(ename)='Scott';

--SCOTT ����� �빮�ڷ� �˻��ϱ�
SELECT *
FROM employee
WHERE UPPER(ename)='SCOTT';

--SCOTT ����� �˻��ϱ�

SELECT *
FROM employee
WHERE ename='SCOTT';

--������ �ѱ��� ���̸� ���ϱ�

SELECT LENGTH('OracleMania'), LENGTH('����Ŭ���Ͼ�')
FROM dual;

--������ �ѱ��� ����Ʈ �� ���ϱ�
--�ٱ���� LENGTHB ����
SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ���Ͼ�')
FROM dual;

--CONCAT�� ���ڿ��� �����ϴ� �Լ��Դϴ�. 
-- ���ڰ����ϱ� 

SELECT 'Oracle','mania',CONCAT('Oracle', 'mania')
FROM dual;

--SUBSTR�� ���� ���ڿ����� �Ϻθ� �����մϴ�. 
--���ڿ��� ���� ��ġ���� ���� ��ŭ ���ڸ��� ���ɴϴ�.
--SUBSTR(���,������ġ, ������ ����)

--���ڿ��� �Ϻθ� ��ö�ϱ�

SELECT SUBSTR('Oracle mania',4,3),SUBSTR('Oracle mania',-4,3)
FROM dual;

--�̸��� N���� ������ ��� ǥ���ϱ�

SELECT * 
FROM employee
WHERE SUBSTR(ename,-1,1)='N';


--SELECT ename, SUBSTR(ename,-1,1) 
--FROM employee;
--WHERE SUBSTR(ename,-1,1)='N';

SELECT *
FROM employee
WHERE ename LIKE '%N';

--87�⵵�� �Ի��� ���ǥ���ϱ�

SELECT *
FROM employee
WHERE SUBSTR(hiredate,1,2)='87';

SELECT *
FROM employee
WHERE hiredate LIKE '87%';

SELECT *
FROM employee
WHERE hiredate>='87/01/01' AND hiredate <='87/12/31';

SELECT *
FROM employee
WHERE hiredate BETWEEN'87/01/01' AND '87/12/31';

--���� �����ϱ�

SELECT SUBSTR('Oracle mania',4,3), SUBSTRB('Oracle mania',4,3)
FROM dual;

--�ѱ� �����ϱ�

SELECT SUBSTR('����Ŭ�ŴϾ�',3,4), SUBSTRB('����Ŭ�ŴϾ�',3,4)
FROM dual;

--INSTR �Լ��� ���ڿ� ������ �ش� ���ڰ� ��� ��ġ�� �����ϴ����� �˷��ݴϴ�. 
--INSTR(��� , ã�� ���� , ������ġ , �� ��° �߰�)
--������ġ�� �� ��° �߰��� �����ϸ� ��� 1�� �����Ѵ�. 

--���� ��ġ ã��

SELECT  INSTR('Oracle Mania','a')
FROM dual;

--Ư�� ��ġ ���Ŀ� ���� ��ġ ã��
SELECT  INSTR('Oracle Mania','a',5,2)
FROM dual;

--����° �ڸ��� 'R'�� ����˻��ϱ�
--���� ��ġ�� ����� ���߱�
SELECT * 
FROM employee
WHERE INSTR(ename,'R',3,1)=3;

--SELECT ename, INSTR(ename,'R',3,1)
--FROM employee;


--LPAD (LEFT PADDING)�Լ��� �÷��̳� ��� ���ڿ��� ��õ� �ڸ������� �����ʿ� ��Ÿ���� , ���� �����ڸ��� Ư����ȣ�� ä��ϴ�. 

--���� �ڸ��� Ư�� ��ȣ�� ä���

SELECT LPAD(salary,10,'*') 
FROM employee;


--RPAD (RIGHT PADDING)�Լ��� �÷��̳� ��� ���ڿ��� ��õ� �ڸ������� ���ʿ� ��Ÿ���� , ���� �������ڸ��� Ư����ȣ�� ä��ϴ�. 

--������ �ڸ��� Ư�� ��ȣ�� ä���


SELECT RPAD(salary,10,'*') 
FROM employee;

--LTRIM �Լ��� ���ڿ��� ����(��)�� ���� ���ڵ��� �����ϰ�,
--RTRIM �Լ��� ������(��)�� ���� ���ڸ� �߶���ϴ�.

SELECT '     Oracle mania     ',LTRIM('     Oracle mania     '),RTRIM('     Oracle mania     ')
FROM dual;

--Ư�� ���� �����ر�                    --�Ű�����
SELECT TRIM('  Oracle mania  '),TRIM( 'O' from 'Oracle mania')
FROM dual;

--�յ� ���� �����ϱ�

SELECT TRIM('     Oracle mania    ')
FROM dual;