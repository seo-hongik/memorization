CREATE TABLE DEPARTMENT(
    DNO     NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,   --�μ���ȣ
    DNAME   VARCHAR2(14),                               --�μ���
    LOC     VARCHAR2(13)                                --������
);

COMMIT;