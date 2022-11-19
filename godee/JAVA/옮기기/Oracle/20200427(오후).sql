SHOW user;

SELECT *
FROM hr.employees;

-- hr ����
-- �����ڷκ��� ��ü ���� �ο��ϱ�

GRANT SELECT 
ON hr.employees
TO usertest03;

COMMIT;

-- usertest03 ����
-- ��ü ���� �°��ϱ�
GRANT SELECT 
ON hr.employees
TO usertest01;

-- hr ����
-- SELECT ������ �ο��ϱ�
SELECT *
FROM hr.departments;

GRANT SELECT
ON hr.departments
TO PUBLIC;

COMMIT;

-- usertest01
-- ��� ����� ��ȸ�ϱ�
SELECT *
FROM hr.departments;

-- usertest02
SELECT *
FROM hr.departments;

-- usertest03
SELECT *
FROM hr.departments;

-- �ý��� �� �ο��ϱ�
-- system ����
CREATE USER usertest04
IDENTIFIED BY pass4;

GRANT CONNECT 
TO usertest04;

GRANT RESOURCE 
TO usertest04;

COMMIT;

-- ����� ���� �� ���� �� ���� �ο�
CREATE ROLE roletest01;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW
TO roletest01;

GRANT roletest01
TO usertest01;

COMMIT;

-- SYSTEM ����
-- �ý��� ���� ���� Ȯ���ϱ�
SELECT *
FROM ROLE_SYS_PRIVS
WHERE ROLE LIKE '%TEST%';

-- usertest01
-- ����ڿ��� �ο��� �� ���� Ȯ��
SELECT *
FROM USER_ROLE_PRIVS;

--system
DROP ROLE roletest01;

COMMIT;

-- ��ü ������ �ѿ� �ο��ϱ�
CREATE ROLE roletest02;
COMMIT;

--hr ����
GRANT SELECT 
ON employees
TO roletest02;

-- system 
-- ���� ����ڿ��� �ο��ϱ�
GRANT roletest02
TO usertest01;
COMMIT;

-- ����ڿ��� ���� �ο��Ǿ����� Ȯ���ϱ�
-- usertest01
SELECT *
FROM hr.employees;

-- ������ ���� Ȯ���ϱ�
SELECT *
FROM user_role_privs;

SELECT *
FROM role_tab_privs;