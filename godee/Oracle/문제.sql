--3�� ���� 1�� ������� �Ի��� �⵵�� �Ի��� �޸� ����Ͻÿ�

SELECT hiredate, SUBSTR(hiredate,1,2) AS �Ի�⵵, SUBSTR(hiredate,4,2) AS �Ի��Ѵ�
FROM employee;

--SELECT TO_CHAR(hiredate,'YY')�⵵, TO_CHAR(hiredate,'MM')��
--FROM employee;

--****3�� ���� 2�� 4���� �Ի��� ����� ����Ͻÿ�

SELECT *
FROM employee
WHERE TO_CHAR(hiredate,'MM')='04';

--SQL2]
--SELECT *
--FROM employee
--WHERE SUBSTR(TO_CHAR(hiredate),4,2)='04';

--SQL3]
--SELECT *
--FROM employee
--WHERE SUBSTR(TO_CHAR(hiredate,'YYMMDD'),3,2)='04';

--SQL2]
--SELECT *
--FROM employee
--WHERE SUBSTR(TO_CHAR(hiredate),4,2)='04';



--3�� ���� 3�� �����ȣ�� ¦���� ����� ����Ͻÿ�

SELECT *
FROM employee
WHERE MOD(eno,2)=0;

SELECT *
FROM employee
WHERE SUBSTR(eno,-1,1)=IN(0,2,4,6,8);

--3��

