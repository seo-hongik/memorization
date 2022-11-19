-- ������� �̸��� ��ȣ�� �����Ͽ� ����� �����ϱ�
CREATE USER usertest01
IDENTIFIED BY pass1;

COMMIT;

GRANT CREATE SESSION 
TO usertest01;

COMMIT;

-- ���̺� ���� ���� �ο��ϱ�
GRANT CREATE TABLE
TO usertest01;

COMMIT;

-- ���̺� �����̽� Ȯ���ϱ�
SELECT username,default_tablespace
FROM dba_users
WHERE username IN ('USERTEST01');

-- ���� �Ҵ��ϱ�
ALTER USER usertest01
QUOTA 100M ON USERS;

COMMIT;

GRANT UNLIMITED TABLESPACE
TO usertest01;

COMMIT;

-- HR ���� ���� �ο��ϱ�
ALTER USER hr
ACCOUNT UNLOCK;
COMMIT;

ALTER USER HR
IDENTIFIED BY 1234;

COMMIT;

-- ��ȣ �����ϱ�
ALTER USER usertest01
IDENTIFIED BY 5678;
COMMIT;

CONN usertest01/5678;

-- ����Ȯ���ϱ�
SHOW USER;

-- ���� �����ϱ�
REVOKE CREATE SESSION
FROM usertest01;

COMMIT;

-- ���� ��ο��ϱ�
GRANT CREATE SESSION
TO usertest01;

COMMIT;

-- �ý��� ���� ��ȸ�ϱ�
SELECT *
FROM session_privs;

-- ����� ���� �� �ý��� ���� �ο��ϱ�
CREATE USER usertest02
IDENTIFIED BY pass2;

CREATE USER usertest03
IDENTIFIED BY pass3;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW
TO usertest02;

GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW
TO usertest03;

COMMIT;

-- �����ڷκ��� ��ü ���� �ο��ϱ�
GRANT SELECT 
ON hr.employee
TO usertest02
WITH GRANT OPTION;