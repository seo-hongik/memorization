-- ���۰��� 10�̰� 10�� �����ϴ� ������ �����ϱ�
CREATE SEQUENCE SAMPLE_SEQ
INCREMENT BY 10
START WITH 10;

COMMIT;

-- ������ �������� ������ ��ȸ�ϱ�
SELECT sequence_name, min_value, max_value, increment_by, cycle_flag
FROM user_sequences;

-- NEXTVAL�� ���ο� �� �����ϱ�
SELECT sample_seq.nextval
FROM dual;

-- �������� ���簪 ��ȸ�ϱ�
SELECT sample_seq.currval
FROM dual;

-- �μ� ��ȣ�� ���� ������ �����ϱ�
CREATE SEQUENCE DNO_SEQ
INCREMENT BY 10
START WITH 10;

COMMIT;

-- �� ���̺� �����ϱ�
DESC dept_second;

DROP TABLE dept_second;

COMMIT;

CREATE TABLE DEPT_SECOND
AS
SELECT *
FROM department WHERE 0 = 1;

COMMIT;

-- ���� �Է��ϱ�
SELECT *
FROM dept_second;

INSERT INTO dept_second
VALUES(DNO_SEQ.nextval, 'ACCOUNTING', 'NEW YORK');

COMMIT;

SELECT *
FROM dept_second;

-- �ִ밪 Ȯ���ϱ�
SELECT sequence_name, min_value, max_value, increment_by, cycle_flag
FROM user_sequences
WHERE sequence_name IN('DNO_SEQ');

-- ������ �����ϱ�
ALTER SEQUENCE DNO_SEQ
MAXVALUE 50;

COMMIT;


-- ������ �����ϱ�
DROP SEQUENCE DNO_SEQ;

COMMIT;

-- ���̺� �ڵ� ������ �ε��� ��ȸ�ϱ�
SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('EMPLOYEE', 'DEPARTMENT');

-- �ε��� �����ϱ�
CREATE INDEX idx_employee_ename
ON employee(ename);

COMMIT;

SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('EMPLOYEE');

-- �ε��� �����ϱ�
DROP INDEX idx_employee_ename;
COMMIT;

-- �ε��� �����
ALTER INDEX pk_emp REBUILD;
COMMIT;

--���� �ε��� �����ϱ�
SELECT *
FROM dept_second;

CREATE UNIQUE INDEX idx_dept_dno
ON dept_second(dno);

COMMIT;

SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('DEPT_SECOND');

-- ���� ����
CREATE UNIQUE INDEX idx_dept_loc
ON dept_second(loc);
COMMIT;


SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('DEPT_SECOND');

-- ���� �ε��� �����ϱ�
CREATE INDEX idx_dept_com
ON dept_second(dname,loc);
SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('DEPT_SECOND');

-- �Լ� ��� �ε��� �����ϱ�
CREATE INDEX idx_emp_second_annsal
ON emp_second(salary*12);

SELECT index_name, table_name, column_name
FROM user_ind_columns
WHERE table_name IN('EMP_SECOND');
