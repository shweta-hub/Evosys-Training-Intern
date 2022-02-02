select * from emp;

select distinct job from emp;

select * from emp order by sal asc;

select * from emp order by deptno asc,job desc;

select distinct job from emp order by job desc;

Select * from emp where empno in ( select mgr from emp) ;

select * from emp where hiredate <('01-jan-81');

select empno ,ename ,sal,sal/30,12*sal annsal from emp order by annsal asc;

select empno,ename ,job,hiredate, months_between(sysdate,hiredate) exp from emp where empno in (select mgr from emp);

select empno,ename,sal from emp where mgr = 7369;

select * from emp where comm > sal;

select * from emp where (sal/30) >100;

select * from emp where job = 'CLERK' or job = 'ANALYST' order by job desc;

select * from emp where hiredate in ('01-may-81' ,'03-dec-81','17-dec-81','19-jan-80') order by hiredate asc;

select * from emp where deptno = 10 or deptno = 20 ;

select * from emp where hiredate between '01-jan-81' and '31-dec-81';

select * from emp where 12*sal between 22000 and 45000;

select ename from emp where length (ename) = 5;

select ename from emp where ename like ‘S%’ and length (ename) = 5;

select * from emp where length(ename) = 4 and ename like '__R%';

select * from emp where length(ename) = 5 and ename like 'S%H';

select * from emp where to_char (hiredate,'mon') = 'jan';

select * from emp where ename like '%LL%';

select * from emp where deptno not in (20);

select * from emp where job not like 'PRESIDENT' and job not like 'MANAGER' order by sal asc;

select * from emp where empno not like '78%';

select e.ename || ' works for ' || m.ename from emp e ,emp m where e.mgr = m.empno ;

select * from emp where to_char (hiredate,'MON') != 'MAR';

select * from emp where job ='CLERK' and deptno = 20;

select * from emp where to_char (hiredate,'YYYY') in ('1981') and (deptno = 30 or deptno =10 ) ;

select * from emp where ename = 'SMITH' ;

select d.branchno from emp e , dept d where e.ename = 'SMITH' and e.deptno = d.deptno ;