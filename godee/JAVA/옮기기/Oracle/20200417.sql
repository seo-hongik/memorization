
-- SCOTT ����� �̸��� �μ���ȣ �� �μ��̸��� ����Ͻÿ�. Į���� ��Ī�� '�����', '�μ���ȣ', '�μ���' ������ ���մϴ�.
SELECT e.ename "�����", e.dno "�μ���ȣ", d.dname "�μ���"
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename='SCOTT';

SELECT *
FROM department;

-- ����̸��� �Բ� �� ����� �Ҽӵ� �μ��̸��� �������� ����Ͻÿ�. Į���� ��Ī�� '�����', '�μ���', '������' ������ ���մϴ�.
SELECT e.ename "�����", d.dname "�μ���", d.doc "������"
FROM employee e, department d
WHERE e.dno = d.dno;

-- 10�� �μ��� ���ϴ� ��� ��� ������ ���� ���(�� ������ ǥ��)�� �μ��� �������� �����Ͽ� ����Ͻÿ�.
-- Į���� ��Ī�� '�μ���ȣ', '������', '������' ������ ���մϴ�.
SELECT d.dno "�μ���ȣ", e.job "������", d.doc "������"
FROM employee e, department d
WHERE e.dno = d.dno
AND e.dno = 10;

-- Ŀ�̼��� �޴� ��� ����� �̸�, �μ��̸�, �������� �����Ͽ� ����Ͻÿ�. Į���� ��Ī�� '�����', '�μ���', '������' ������ ���մϴ�.
SELECT e.ename "�����", d.dname "�μ���", d.doc "������"
FROM employee e, department d
WHERE e.dno = d.dno
AND commision > 0;

-- �̸��� A�� ���Ե� ��� ����� �̸��� �μ��̸��� ����Ͻÿ�. Į���� ��Ī�� '�����', '�μ���' ������ ���մϴ�.
SELECT e.ename "�����", d.dname "�μ���"
FROM employee e, department d
WHERE e.dno = d.dno
AND ename LIKE '%A%';

-- NEW YORK�� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ �� �μ����� ����Ͻÿ�. Į���� ��Ī�� '�����', '������', '�μ���ȣ', '�μ���' ������ ���մϴ�.
SELECT e.ename "�����", e.job "������", e.dno "�μ���ȣ", d.dname "�μ���"
FROM employee e, department d
WHERE e.dno = d.dno
AND d.doc = 'NEW YORK';


-- ����� �̸� �� �����ȣ�� ������(���) �̸� �� ������(���) ��ȣ�� �Բ� ����Ͻÿ�. Į���� ��Ī�� '�����', '�����ȣ', '�������̸�', '�����ڹ�ȣ' ������ ���մϴ�.
SELECT e.ename "�����", e.eno "�����ȣ", ee.ename "�������̸�", ee.eno "�����ڹ�ȣ"
FROM employee e, employee ee
WHERE e.manager = ee.eno;

--������(���)�� ���� ����� �����Ͽ� �����ȣ�� �������� �������� �����Ͽ� ����Ͻÿ�. Į���� ��Ī�� '�����', '�����ȣ', '�������̸�', '�����ڹ�ȣ' ������ ���մϴ�.
-- NULL�� ��� 0 �Ǵ� 'NONE'���� ǥ���մϴ�.
SELECT e.ename "�����", e.eno "�����ȣ", NVL(ee.ename, 0) "�������̸�", NVL(ee.eno, 0) "�����ڹ�ȣ"
FROM employee e, employee ee
WHERE e.manager = ee.eno(+)
ORDER BY e.eno DESC;

-- 'SCOTT' ����� �̸�, �μ���ȣ, ������ ����� ������ �μ����� �ٹ��ϴ� ����� ����Ͻÿ�. Į���� ��Ī�� '�����', '�μ���ȣ', '�����' ������ ���մϴ�.
SELECT e.ename "�����", e.dno "�μ���ȣ", ee.ename "�����"
FROM employee e, employee ee
WHERE e.dno = ee.dno
AND e.ename = 'SCOTT'
AND ee.ename != 'SCOTT';


SELECT ename, hiredate
FROM employee;

-- �̸��� 'WARD'��� ������� �ʰ� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�. Į���� ��Ī�� '�����', '�Ի���' ������ ���մϴ�.
SELECT e.ename "�����", e.hiredate "�Ի���"
FROM employee e, employee ee
WHERE ee.ename = 'WARD' 
AND ee.hiredate < e.hiredate
ORDER BY e.hiredate ASC;


-- ������(���)���� ���� �Ի��� ��� ����� �̸� �� �Ի����� ������(���)�� �̸� �� �Ի��ϰ� �Բ� ����Ͻÿ�.
-- Į���� ��Ī�� '�����', '�Ի���', '�����ڸ�', '�������Ի���' ������ ���մϴ�.
SELECT e.ename "�����", e.hiredate "�Ի���", ee.ename "�����ڸ�", ee.hiredate "�������Ի���"
FROM employee e, employee ee
WHERE e.manager = ee.eno 
AND e.hiredate < ee.hiredate;


