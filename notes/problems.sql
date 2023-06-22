/*

» 1.Find the third-highest salary from the Employeelnfo table.

» 2.Find the Nth highest salary from the table without using TOP/limit keyword.

» 3.Find duplicate rows in a table.

» 4.Calculate the even and odd records from a table.

» 5.Display the first and the last record from the Employeelnfo table.

» 6.How do you copy all rows of a table using SQL query?

» 7.Retrieve the list of employees working in the same department.

» 8.Retrieve the last 3 records from the Employeeinfo table.

» 9.Fetch details of employees whose EmpLname ends with an alphabet ‘A’ and
    contains five alphabets.

» 10.Find Nth Highest Salary in SQL(5 Ways)





How lo Delete Duplicate Rows tna Table’! SQL interview Preparation

*/

--1.Write a query to find the third-highest salary from the EmployeeInfo table.
SELECT *
FROM EmployeeInfo
ORDER BY salary DESC
LIMIT 2,1;
         --or--
SELECT salary 
FROM EmployeeInfo
ORDER BY salary DESC 
LIMIT 2,1;
-------------------------------
/*
--2.Write a query to find the Nth highest salary from the table without
using TOP/limit keyword.
*/
SELECT salary
FROM employeeinfo e1
WHERE N-1 = ( SELECT COUNT(DISTINCT salary)
              FROM employeeinfo e2
              WHERE e2.salary > e1.salary);
-- where N=1,2,3_ _ _


--3.Write SQL Query to find duplicate rows in a table.
SELECT *, COUNT(empid)
FROM Employeelnfo
GROUP BY empid;

--4.Write a query to calculate the even and odd records from a table.
--For EVEN
SELECT * FROM Employeelnfo
WHERE MOD(EmpID,2)=0;

--For ODD
SELECT * FROM Employeelnfo 
WHERE MOD(EmpID,2)=1;


--5.Write a query to display the first and the last record from the EmployeeInfo table.
--For First record
SELECT * FROM EmployeeInfo
WHERE EmpID = (SELECT MIN(EmpID)
                FROM EmployeeInfo);

--For Last record
SELECT * FROM EmployeeInfo
WHERE EmpID = (SELECT MAX(EmpID)
                FROM EmployeeInfo);


--7.Write a query to retrieve the list of employees working in the same department.
Select DISTINCT E.EmpID, E.EmpFname, E.Department
FROM EmployeeInfo E, Employeeinfo E1
WHERE E.Department = E1.Department
AND E.EmpID != E1.EmpID;


--8.Write a query to retrieve the last 3 records from the Emplofo table.
SELECT * FROM (SELECT * FROM EmployeeInfo
                ORDER BY EmpID DESC LIMIT 3)
temp ORDER BY EmpID ASC;

SELECT * FROM temp ORDER BY EmpID ASC;


--9.Write a query to fetch details of employees whose EmpLname ends with an alphabet 'A' and contains five alphabets.

SELECT FROM EmployeeInfo WHERE EmpLname LIKE '____a'  

DELETE E1
FROM employee _info E1, employee_info E2
WHERE E1.email = E2.email
AND E1.ld > E2.Id;


--10.Find Nth Highest Salary in SQL(5 Ways)
--m.1--3rd Highest salary wirh Using MAX()
SELECT MAX(salary)
FROM employee_info
WHERE salary < ( SELECT MAX(salary)
                 FROM employee_info
                 WHERE salary < (SELECT MAX(salary)
                );

--2nd Highest
SELECT MAX(salary)
FROM employee_info
WHERE salary < ( SELECT MAX(salary)
                 FROM employee_info );
         -- or --
SELECT MAX(salary)
FROM employee_info
WHERE salary < 500000


--m.2--Using LIMIT Clause
SELECT salary
FROM employee_info
ORDER BY salary DESC
LIMIT n-1,1;

--2rd highest salary
SELECT salary
Using LIMIT Clause
FROM employee_info
ORDER BY salary DESC
LIMIT 1,1;

--3rd highest salary
SELECT salary
FROM employee_info
ORDER BY salary DESC
LIMIT 2,1;

--m.3--Without Using LIMIT Clause
SELECT salary
FROM employee_info e1
Where 3-1 = ( Select COUNT(DISTINCT salary)
              From employee_info e2
              WHERE e2.salary > e1.salary )
-- where N=1,2,3_  _ _              


/*
-- Write a SQL query to find the name of the department where more than two employees are working.
-- Write SQL query to calculate the average salary of each department which is higher than 75000.Find department name also in descending order.
--Write a SQL query to find the manager and employee who belongs to same city.

--Write a SQL query to find those employee whose salary exists
  between 35000 and 90000 with the department and manager name
  
*/

-- Write a SQL query to find the name of the department where more than two employees are working.
SELECT d.dept_name;
FROM department d LEFT JOIN employee e
ON d.dept_id = e.dept_id
GROUP BY e.dept_id
HAVING COUNT(e.dept_id) > 2;

-- Write SQL query to calculate the average salary of each department which is higher than 75000.Find department name also in descending order. 
SELECT d.dept_name, AVG(e.salary)
FROM employee e LEFT JOIN department d ON e.dept_id = d.dept_id
GROUP BY e.dept_id
HAVING AVG(e.salary)>75000
ORDER BY d.dept_name DESC;

--Write a SQL query to find the manager and employee who belongs to same city.
SELECT e.emp_name,m.manager_name,e.city 
FROM employee e LEFT JOIN manager m 
ON e.manager_id = m.manager_id
WHERE e.city=m.city;

--Write a SQL query to find those employee whose salary exists between 
 --35000 and 90000 with the department and manager name
Select d.dept_id , m.manager_name , e.emp_name , e.salary
From employee e INNER JOIN department d  
on e.dept_id = d.dept_id  INNER JOIN manager m 
on m.manager_id = e.manager_id
where e.salary BETWEEN 3500 AND 90000;


/*
****************************************************************************************************
--Top 9 SQL queries for interview | SQL Tutorial | Interview Question

****************************************************************************************************
*/


















/*
****************************************************************************************************
                                            TOP CLAUSE
****************************************************************************************************
****************************************************************************************************
*/
--TOP Clause
SELECT TOP 3 * FROM table_name; 


SELECT TOP row_count | PERCENT column1,column2,...
FROM table_name
WHERE condition
ORDER BY column_name(s);

SELECT * FROM emp ORDER BY DEPTNO FETCH FIRST 3 ROWS ONLY;

SELECT * FROM emp FETCH FIRST 4 ROWS ONLY;

--FETCH FIRST n ROWS ONLY
SELECT column1,column2,...
FROM table_name
WHERE condition
ORDER BY column_name(s)
FETCH FIRST row_count ROWS ONLY;


--FETCH FIRST n ROWS ONLY
SELECT column1,column2,...
FROM table_name
WHERE condition
ORDER BY column_name(s)
OFFSET offset ROWS
FETCH FIRST row_count ROWS ONLY;



SELECT * FROM emp
OFFSET 4 ROW 
FETCH FIRST 2 ROWS ONLY;
---------------------------------------


/*
****************************************************************************************************
Oracle Interview question How To Get unique records without using distinct in oracle
How to get unique records without using "DISTINCT" in oracle?
Watch to know 9 different ways to fetch unique records
without using "DISTINCT" keyword
****************************************************************************************************
*/

--How To Get unique records without using distinct in oracle
 SELECT UNIQUE ROLL_NO, STU_NAME
 FROM STUDENT_LIST
 ORDER BY ROLL_NO, STU_NAME;




SELECT
ROLL_NO, STU_NAME
FROM
STUDENT LIST
DISTINCT ROLL_NO, STU_NAME
FROM
STUDENT LIST
ORDER BY
ROLL_NO, STU_NAME;


--Oracle Interview question How To Get unique records without using distinct in oracle
SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
UNION
SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST;

SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
GROUP BY ROLL_NO, STU_NAME
ORDER BY ROLL_NO, STU_NAME:

SELECT ROLL_NO, STU_NAME, COUNT(*)
FROM STUDENT_LIST
GROUP BY ROLL_NO, STU_NAME
ORDER BY ROLL_NO, STU_NAME;


SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
UNION ALL
SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST;

SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
INTERSECT
SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST;

SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
UNION
SELECT NULL, NULL
FROM DUAL WHERE 1-2;

SELECT ROLL_NO, STU_NAME FROM
SELECT ROLL_NO, STU_NAME,
ROW_NUMBER() over (partition by ROLL_NO, STU_NAME ORDER BY ROLL_NO, STU_NAME) R
FROM STUDENT_LIST)
where R-1;

SELECT ROLL_NO, STU_NAME FROM (
SELECT ROLL_NO, STU_NAME,
ROW_NUMBER() over (partition by ROLL_NO, STU_NAME
FROM STUDENT_LIST)
where R-1;

SELECT ROLL_NO, STU_NAME
FROM STUDENT_LIST
MINUS
SELECT NULL, NULL
FROM DUAL;

SELECT ROLL_NO, STU_NAME FROM
SELECT ROLL_NO, STU_NAME,
RANK () over (partition by ROLL_NO, STU_NAME
ORDER BY ROWNUM) R
FROM STUDENT_LIST
where R-1;

SELECT
FROM STUDENT_LIST A
WHERE 1 = (SELECT COUNT(1)
FROM STUDENT LIST B
WHERE A.ROLL_NO= B. ROLL NO AND A.STU_NAME = B.STU_NAME AND A.ROWID>= B.ROWID);

SELECT FROM STUDENT_LIST
WHERE ROWID IN (
SELECT MIN (ROWID)
FROM STUDENT_LIST
GROUP BY ROLL_NO, STU_NAME)
ORDER BY ROLL_NO, STU_NAME;

------------------------------------------------------------------------------------------------
/*
different ways of deleting the dublicate records in db
*/
select from emp_t order by 1;

select from emp_t where rowid not in (
select max (rowid)
from emp_t
group by EMPNO, ENAME, JOB, SAL, DEPTNO);

select from emp_t where rowid in (
select max (rowid)
from emp_t
group by EMPNO, ENAME, JOB, SAL, DEPTNO);

select ROWID, emp_t.*

delete emp_t where rowid not in (
select max (rowid)
from emp_t
group by EMPNO, ENAME, JOB, SAL, DEPTNO);
select from emp_t;

select ROWID, emp_t.* from emp_t order by empno;

delete from emp_t
where rowid not in
from emp_t
select max (rowid)
group by EMPNO,
ENAME,
JOB,
SAL,
DEPTNOY;

select rl, r from (
select EMPNO, ENAME, JOB, SAL, DEPTNO,
rowid rl,ROW_NUMBER() over (partition by EMPNO, ENAME, JOB, SAL, DEPTNO order by rownum) R
from emp_t
order by empno)
where r>1;

delete from emp_t where rowid in (
select EMPNO, ENAME, JOB, SAL, DEPTNO,
ROW_NUMBER() over (partition by EMPNO, ENAME, JOB, SAL, DEPTNO order by rownum) R
select rl from (
rowid rl,
from emp_t
order by empno)
where r>1);
select * from emp_t;|

select EMPNO, ENAME, JOB, SAL, DEPTNO,
ROW_NUMBER() over (partition by EMPNO, ENAME, JOB, SAL, DEPTNO order by rownum) R
rowid,
from emp_t
order by empno;

select from emp_t order by 1;

alter table emp_t add row_num number;

update emp_t set row_num = rownum;


DELETE FROM emp_t
WHERE
row_num NOT IN (
SELECT MIN(row_num),
FROM emp_t
GROUP BY empno, ename, job, sal, deptno);
select from emp_t;
 

--SQL to delete duplicate records
create table emp temp as
select distinct EMPNO, ENAME, JOB, SAL, DEPTNO Erom emp_t;
drop table emp_t;
alter table emp_temp rename to emp_t;
