CREATE TABLE EMPLOYEE (
ENO         NUMBER(4)       CONSTRAINT PK_EMP PRIMARY KEY,           -- �����ȣ  
ENAME       VARCHAR2(10),                                            -- �����
JOB         VARCHAR2(9),                                             -- ������
MANAGER     NUMBER(4),                                               -- �ش����� ����ȣ 
HIREDATE    DATE,                                                    -- �Ի���
SALARY      NUMBER(7,2),                                             -- �޿�
COMMISION   NUMBER(7,2),                                             -- Ŀ�̼�
DNO         NUMBER(2)       CONSTRAINT FK_DNO REFERENCES DEPARTMENT  -- �μ���ȣ
);

COMMIT;