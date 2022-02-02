CREATE TABLE BRANCH (
		BRANCHNO	INT CONSTRAINT PK_BRANCH_BRANCHNO PRIMARY KEY,
		BRANCHNAME  VARCHAR2(20) NOT NULL ,
		LOCATION    VARCHAR2(20) NOT NULL 
	);	
CREATE TABLE DEPT    (
		DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
		DNAME VARCHAR2(14),
		BRANCHNO	INT CONSTRAINT FK_DEPT_BRANCHNO REFERENCES BRANCH			
	) ;
    
    ALTER TABLE DEPT
    MODIFY DNAME VARCHAR2(14) NOT NULL;
    
	

	
    CREATE TABLE EMP(
		EMPNO 		NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
		ENAME 		VARCHAR2(10),
		JOB 		VARCHAR2(9),
		MGR 		NUMBER(4),
		HIREDATE 	DATE,
		SAL 		NUMBER(7,2),
		COMM 		NUMBER(7,2),
		DEPTNO 		NUMBER(2) CONSTRAINT FK_EMP_DEPTNO REFERENCES DEPT,
		BRANCHNO 	INT CONSTRAINT FK_EMP_BRANCHNO REFERENCES BRANCH
	);  
    
    INSERT INTO BRANCH VALUES 	(101,'Geneva','NEW YORK');
	INSERT INTO BRANCH VALUES 	(102,'Geneva','NEW YORK');
	INSERT INTO BRANCH VALUES 	(103,'CHICAGO','CHICAGO');
	INSERT INTO BRANCH VALUES 	(104,'CHICAGO','CHICAGO');
	INSERT INTO BRANCH VALUES 	(105,'Kingston','NEW YORK');
	INSERT INTO BRANCH VALUES 	(106,'Kingston','NEW YORK');
    
    
    INSERT INTO DEPT VALUES	(10,'ACCOUNTING',101);
	INSERT INTO DEPT VALUES (20,'RESEARCH',103);
	INSERT INTO DEPT VALUES	(30,'SALES',105);
	INSERT INTO DEPT VALUES	(40,'OPERATIONS',106);
    
    
INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20,102);
INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30,102);
INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30,103);
INSERT INTO EMP VALUES(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20,104);
INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30,105);
INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30,105);
INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10,102);
INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87')-85,3000,NULL,20,103);
INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,NULL,101);
INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30,104);
INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87')-51,1100,NULL,20,105);
INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30,103);
INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20,105);
INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10,104);
INSERT INTO EMP VALUES(7901,'JOHN_SMITH','CLERK',7698,to_date('23-1-1982','dd-mm-yyyy'),3000,NULL,30,104);

COMMIT ;

select * from dept;
select deptno,dname,branchno from dept;

select * from branch;
    select BRANCHNO,	BRANCHNAME ,       LOCATION    from branch;
    
select * from emp;
    select EMPNO ,ENAME ,JOB,MGR ,HIREDATE ,SAL  ,COMM ,DEPTNO ,BRANCHNO  from emp;
    


SELECT 
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
ORDER BY
    empno;
    
SELECT 
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
ORDER BY
    deptno;
    
SELECT 
    deptno,empno,ename,job,mgr,hiredate,sal,comm,branchno
FROM
    emp
ORDER BY
    deptno,empno;
    
SELECT 
    deptno,empno,ename,sal
FROM
    emp
ORDER BY
    deptno,sal;
    
SELECT 
    deptno,empno,ename,sal
FROM
    emp
ORDER BY
   sal;
   
SELECT 
    deptno,empno,ename,sal
FROM
    emp
ORDER BY
   sal desc;
   
SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
    deptno=10;

SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM 
    emp
WHERE 
    deptno=10 or deptno=20;
    
    
SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM 
    emp
WHERE 
    deptno IN (10,20);
    
SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
    deptno!=10 AND deptno!=20;
    
SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
    deptno NOT in (10,20);
    
SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
    deptno IS NULL
ORDER BY
    deptno;
    
SELECT
    empno,ename,comm,deptno
FROM 
    emp
WHERE
    deptno=30 AND comm IS NOT NULL AND comm>0
ORDER BY 
    comm;
    
SELECT
    empno,ename,comm,deptno
FROM 
    emp
WHERE
    comm IS NULL OR comm=0
ORDER BY 
    comm;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal>=1000 and sal<=3000
ORDER BY 
    sal ;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal BETWEEN 1000 AND 3000
ORDER BY 
    sal ;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal NOT BETWEEN 1000 AND 3000
ORDER BY 
    sal ;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal<1000 OR sal>3000
ORDER BY 
    sal ;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal=5000
ORDER BY 
    sal ;
    
SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal!=5000
ORDER BY 
    sal ;
    
 SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    sal<>5000
ORDER BY 
    sal ;
    
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename='SMITH'; 
    
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename='Smith'; 

SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE 'S%'; 
    
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename NOT LIKE 'S%'; 
    
-- ################################################################
-- 13.3 Display all details of EMPLOYEE who's name ends with S
-- ################################################################
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%S'; 
-- ################################################################
-- 13.4 Display all details of EMPLOYEE who's name contains LL
-- ################################################################
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%LL%'; 
    
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '_LL__'; 
        
-- ################################################################
-- 13.5 Display all details of EMPLOYEE who's name contains _
-- ################################################################
--    BELOW QUERY IS TO MUCH EXCITED TO GIVE ALL EMPLOYE AS IT % _ %
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%_%'; 
--    BELOW QUERY IS AFRAID TO FIND ANY RECORD
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%\_%'; 
--    USING ESCAPE : rEALIZATION WE NEED ENAME WITH "_"
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%\_%' ESCAPE '\';
    
SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '%@_%' ESCAPE '@';
    
-- ################################################################
-- 14. Aggregate Function max,min,sum,avg,count 
--     SUM
--     AVG
--     COUNT
--     MAX
--     MIN

-- ################################################################
-- 14.1 Display count of employees
-- count(*) including null values 
-- ################################################################
SELECT
    COUNT(*), COUNT(empno),count(deptno)
FROM 
    emp;
-- ################################################################
-- 14.2 Display count of employees WORKING IN SOME DEPT
-- count(deptno) excludes the null vlaue 
-- ################################################################
    select count(DEPTNO) from emp;
    
-- ################################################################
-- 14.3 Display max,min,sum,avg salary of employees
-- ################################################################
SELECT
    MIN(sal), MAX(sal),COUNT(sal),SUM(sal),AVG(sal)
FROM
    emp;
    
-- ################################################################
-- 15.1 Display department wise count of employees
-- ################################################################
SELECT
    deptno,count(empno)
FROM 
    emp
GROUP BY
    deptno
ORDER BY 
    deptno;
-- ################################################################
-- 15.1 Display job wise count of employees and order by job
-- ################################################################
    
SELECT
    job,COUNT(empno)
FROM 
    emp
GROUP BY
    job
ORDER BY 
    job;
    
SELECT
    job,COUNT(empno)
FROM 
    emp
GROUP BY
    job
ORDER BY 
    count(empno);
    
    -- ################################################################
-- 15.2 Display department wise max,min,avg salary
-- ################################################################
-- ################################################################
-- 15.2 Display department wise max,min,avg salary
-- ################################################################
SELECT 
       deptno,MAX(sal),MIN(sal),AVG(sal)
FROM 
    emp
GROUP BY
    deptno
ORDER BY
    deptno;
    
SELECT 
       deptno,MAX(sal),MIN(sal),round(AVG(sal),2)
FROM 
    emp
GROUP BY
    deptno
ORDER BY
    deptno;
        
    -- ################################################################
-- 15.3 Display department wise max,min,avg salary where avg(sal)<2500
-- ################################################################
SELECT 
       deptno,MAX(sal),MIN(sal),round(AVG(sal),2)
FROM 
    emp
GROUP BY
    deptno
Having 
    avg(sal)<2500
ORDER BY
    deptno;
    
-- ################################################################
-- 16. Special functions nvl() 
-- If comm is null display 0
-- Display empno,ename,sal,comm and total sal=sal+comm for all employees 
-- 0+1=1
-- null+1=null
-- for calculation purpose we can give some default value for null values in a column
-- nvl=>nullvalue replacement 
-- ################################################################
SELECT
    empno,ename,sal,comm,sal+comm,sal+nvl(comm,0)
FROM
    emp
ORDER BY comm;
-- if comm 0 or comm is null -> 100 -> case when expression then action end 
-- if com >0   comm
SELECT
    empno,ename,sal,comm,
    case
        when comm is null or comm=0
                then 100
        when comm >0
                then comm
    end as UPDATED_COMMISSION ,
    SAL+case
        when comm is null or comm=0
                then 100
        when comm >0
                then comm
    end as Total_salary
    
FROM 
    emp
ORDER BY
    comm;
    
-- ################################################################
-- 18. SUB QUERY
-- ################################################################
-- ################################################################
-- 18. display the employees details such as empno,ename and sal, who are earning more than avg salary
-- ################################################################
-- ################################################################
-- 18. SUB QUERY
-- Query within query
-- Inner Query
-- outer Query depends on result of INNER query
-- ################################################################
-- ################################################################
-- 18. display the employees details such as empno,ename and sal, who are earning more than avg salary
-- ################################################################
-- 1. display empno,ename,sal
SELECT 
    empno,ename,sal
FROM 
    emp;
-- 2. avg(sal)
SELECT 
    AVG(sal)
FROM 
    emp;

-- 3. sal>avg(sal) final solution

SELECT 
    empno,ename,sal
FROM 
    emp
WHERE
    sal>(
    SELECT 
        AVG(sal)
    FROM 
    emp
    );

-- ################################################################
-- 18.2. Display empno,ename,deptno for all employees working in 'ACCOUNTING'
-- ################################################################
-- 1.
    SELECT 
        empno,ename,deptno
    from 
        emp;
-- 2. 
    SELECT 
        deptno
    FROM
        dept
    WHERE
        dname='ACCOUNTING';

-- 3. Final Query
    SELECT 
        empno,ename,deptno
    FROM
        emp
    WHERE
        deptno=(
        SELECT 
        deptno
    FROM
        dept
    WHERE
        dname='ACCOUNTING'
        );

-- ################################################################
-- 18.3. Display empno,ename,deptno for all employees from department having employee earning salary > avg(salary)
-- ################################################################
-- 1. department having employee earning max salary
    SELECT 
        deptno
    FROM 
        emp
    WHERE
        sal>(SELECT avg(sal) FROM emp)
    ORDER BY
    deptno;
        
    
-- 2. Display empno,ename,deptno for all employees
    SELECT 
        empno,ename,deptno
    FROM
        emp;
    
-- 3. Final
SELECT 
        empno,ename,deptno
    FROM
        emp
    WHERE
    deptno IN (SELECT       deptno     FROM         emp
            WHERE         sal>(SELECT avg(sal) FROM emp))
    ORDER BY
    deptno;
    
===============================================================
SELECT * FROM BRANCH;
SELECT * FROM DEPT;
SELECT * FROM EMP;

ALTER TABLE emp
DROP COLUMN branchno;
-- ################################################################ 
-- JOIN 
-- THERE ARE TWO WAYS TO FETCH DATA FROM ORACLE DATABASE 
-- EITHER USING (+) OR USING ANSI LEFT/OUTER/INNER/RIGHT QURIES
-- Oracle syntax dont have full outer join but Ansi version has it
-- ################################################################ 


-- ################################################################
-- INNER JOIN
-- 18.0 Display employee details such that ename,deptname and location of work is printed by the query
-- ################################################################
SELECT
    emp.ename,dept.dname,branch.location
FROM 
    emp,dept,branch
where 
    emp.deptno=dept.deptno and dept.branchno=branch.branchno;

SELECT
    emp.ename,dept.dname,branch.location
FROM 
    emp JOIN dept 
    ON emp.deptno=dept.deptno
    JOIN branch
    ON dept.branchno=branch.branchno;

-- ################################################################ 
-- LIST All employees details suhc as  EMPNAME, JOB, MGR, HIGREDATE, SAL,DNAME
-- left join to dept table 
-- All employee details along with dname even if some employee has null value in deptno.
--    EMP [ EMPNAME, JOB, MGR, HIGREDATE, SAL]
--    DEPT[ DNAME]
--   EMP.DEPTNO=DEPT.DEPTNO
-- ################################################################ 
SELECT 
    ENAME,JOB,MGR,HIREDATE,SAL,DNAME
FROM
EMP LEFT OUTER JOIN DEPT
ON
EMP.DEPTNO=DEPT.DEPTNO;
-- ################################################################ 
-- Display ename,job,mgr,sal,hiredate,dname from emp and dept 
-- such that all deptartment names are displayed in ouput
-- Display ename,job,mgr,sal,hiredate,dname from emp showing right join with dept 
 ################################################################ 
SELECT 
    ENAME,JOB,MGR,HIREDATE,SAL,DNAME
FROM
EMP RIGHT OUTER JOIN DEPT
ON
EMP.DEPTNO=DEPT.DEPTNO;

-- ################################################################ 
-- Display ename,job,mgr,sal,hiredate,dname from emp and dept 
-- EVEN FOR THE NULL VALUES IN BOTH TABLES
 -- ################################################################ 
 SELECT 
    ENAME,JOB,MGR,HIREDATE,SAL,DNAME
FROM
    EMP FULL OUTER JOIN DEPT
ON
    EMP.DEPTNO=DEPT.DEPTNO
ORDER BY DNAME ;

--
 SELECT 
    ENAME,JOB,MGR,HIREDATE,SAL,e.deptno,DNAME
FROM
    EMP e JOIN DEPT d
ON
    e.DEPTNO=d.DEPTNO
ORDER BY DNAME ;


SELECT ENAME, E.job, MGR,HIREDATE,SAL,D.DNAME
FROM EMP E , DEPT D
WHERE E.DEPTNO=D.DEPTNO(+)

SELECT ENAME, E.job, MGR,HIREDATE,SAL,D.DNAME
FROM EMP E , DEPT D
WHERE E.DEPTNO(+)=D.DEPTNO


-- ################################################################ 
-- list ename,job,sal,branchname
-- emp
-- branch
-- ################################################################ 
SELECT 
    ENAME,JOB,SAL,BRANCHNAME
FROM
        EMP e join Dept d
    on 
        e.deptno=d.deptno
    join
        branch b
    on
        d.branchno=b.branchno;

-- ################################################################ 
-- list empname, job,sal,branchname,dname
-- ################################################################ 
--aSSIGNMENT
-- ################################################################ 
-- LIST ALL DNAME AND EMP COUNT FOR EACH DEPT 
-- ################################################################ 
SELECT
    DNAME,COUNT(EMPNO)
FROM
    DEPT JOIN EMP
ON
    DEPT.DEPTNO=EMP.DEPTNO
GROUP BY 
    DNAME;
    
    

-- ################################################################ 
-- LIST ALL BRANCHNAME AND EMP COUNT FOR EACH BRANCH
-- ################################################################ 
SELECT 
    BRANCHNAME,COUNT(EMPNO)
FROM
    BRANCH JOIN DEPT
    ON BRANCH.BRANCHNO=DEPT.BRANCHNO
    JOIN EMP
    ON DEPT.DEPTNO=EMP.DEPTNO
GROUP BY
    branchname;
-- ################################################################ 
--LIST BRANCHNAME,DNAME,SUM OF SAL FOR THOSE BRANCH AND DEPT WHERE THE SUM IS >5000
-- ################################################################ 


-- ################################################################ 
-- List empno,ename,mgr,manger name 
-- ################################################################ 
SELECT
    e.empno,e.ename,e.mgr,m.ename
FROM 
    emp e  join emp m
    on e.mgr=m.empno;




    