HR@orcl> connect hr/hr
Connected.
HR@orcl> describe departments
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 DEPARTMENT_ID                                                     NOT NULL NUMBER(4)
 DEPARTMENT_NAME                                                   NOT NULL VARCHAR2(30)
 MANAGER_ID                                                                 NUMBER(6)
 LOCATION_ID                                                                NUMBER(4)

HR@orcl> select *
  2  from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                     
------------- ------------------------------ ---------- -----------                                                     
           10 Administration                        200        1700                                                     
           20 Marketing                             201        1800                                                     
           50 Shipping                              124        1500                                                     
           60 IT                                    103        1400                                                     
           80 Sales                                 149        2500                                                     
           90 Executive                             100        1700                                                     
          110 Accounting                            205        1700                                                     
          190 Contracting                                      1700                                                     

8 rows selected.

HR@orcl> describe employees
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 EMPLOYEE_ID                                                       NOT NULL NUMBER(6)
 FIRST_NAME                                                                 VARCHAR2(20)
 LAST_NAME                                                         NOT NULL VARCHAR2(25)
 EMAIL                                                             NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                               VARCHAR2(20)
 HIRE_DATE                                                         NOT NULL DATE
 JOB_ID                                                            NOT NULL VARCHAR2(10)
 SALARY                                                                     NUMBER(8,2)
 COMMISSION_PCT                                                             NUMBER(2,2)
 MANAGER_ID                                                                 NUMBER(6)
 DEPARTMENT_ID                                                              NUMBER(4)

HR@orcl> select employee_id, last_name, job_id, hire_date StartDate
  2  from employees;

EMPLOYEE_ID LAST_NAME                 JOB_ID     STARTDATE                                                              
----------- ------------------------- ---------- ---------                                                              
        100 King                      AD_PRES    17-JUN-87                                                              
        101 Kochhar                   AD_VP      21-SEP-89                                                              
        102 De Haan                   AD_VP      13-JAN-93                                                              
        103 Hunold                    IT_PROG    03-JAN-90                                                              
        104 Ernst                     IT_PROG    21-MAY-91                                                              
        107 Lorentz                   IT_PROG    07-FEB-99                                                              
        124 Mourgos                   ST_MAN     16-NOV-99                                                              
        141 Rajs                      ST_CLERK   17-OCT-95                                                              
        142 Davies                    ST_CLERK   29-JAN-97                                                              
        143 Matos                     ST_CLERK   15-MAR-98                                                              
        144 Vargas                    ST_CLERK   09-JUL-98                                                              

EMPLOYEE_ID LAST_NAME                 JOB_ID     STARTDATE                                                              
----------- ------------------------- ---------- ---------                                                              
        149 Zlotkey                   SA_MAN     29-JAN-00                                                              
        174 Abel                      SA_REP     11-MAY-96                                                              
        176 Taylor                    SA_REP     24-MAR-98                                                              
        178 Grant                     SA_REP     24-MAY-99                                                              
        200 Whalen                    AD_ASST    17-SEP-87                                                              
        201 Hartstein                 MK_MAN     17-FEB-96                                                              
        202 Fay                       MK_REP     17-AUG-97                                                              
        205 Higgins                   AC_MGR     07-JUN-94                                                              
        206 Gietz                     AC_ACCOUNT 07-JUN-94                                                              

20 rows selected.

HR@orcl> save lab01_03.sql
Created file lab01_03.sql
HR@orcl> select disrinct job_id
  2  from employees;
HR@orcl> /

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
ST_CLERK                                                                                                                

JOB_ID                                                                                                                  
----------                                                                                                              
ST_MAN                                                                                                                  

12 rows selected.

HR@orcl> ed lab01_03.sql

HR@orcl> /

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
ST_CLERK                                                                                                                

JOB_ID                                                                                                                  
----------                                                                                                              
ST_MAN                                                                                                                  

12 rows selected.

HR@orcl> SELECT last_name||','||job_id "Employee and Title"
  2  FROM employees;

Employee and Title                                                                                                      
------------------------------------                                                                                    
Abel,SA_REP                                                                                                             
Davies,ST_CLERK                                                                                                         
De Haan,AD_VP                                                                                                           
Ernst,IT_PROG                                                                                                           
Fay,MK_REP                                                                                                              
Gietz,AC_ACCOUNT                                                                                                        
Grant,SA_REP                                                                                                            
Hartstein,MK_MAN                                                                                                        
Higgins,AC_MGR                                                                                                          
Hunold,IT_PROG                                                                                                          
King,AD_PRES                                                                                                            

Employee and Title                                                                                                      
------------------------------------                                                                                    
Kochhar,AD_VP                                                                                                           
Lorentz,IT_PROG                                                                                                         
Matos,ST_CLERK                                                                                                          
Mourgos,ST_MAN                                                                                                          
Rajs,ST_CLERK                                                                                                           
Taylor,SA_REP                                                                                                           
Vargas,ST_CLERK                                                                                                         
Whalen,AD_ASST                                                                                                          
Zlotkey,SA_MAN                                                                                                          

20 rows selected.

HR@orcl> select last_name, salary
  2  from employees
  3  where salary>12000;

LAST_NAME                     SALARY                                                                                    
------------------------- ----------                                                                                    
King                           24000                                                                                    
Kochhar                        17000                                                                                    
De Haan                        17000                                                                                    
Hartstein                      13000                                                                                    

HR@orcl> select last_name, department_id
  2  from employees
  3  where employee_id = 176;

LAST_NAME                 DEPARTMENT_ID                                                                                 
------------------------- -------------                                                                                 
Taylor                               80                                                                                 

HR@orcl> select last_name, salary
  2  from employees
  3  where salary not between 5000 and 12000;

LAST_NAME                     SALARY                                                                                    
------------------------- ----------                                                                                    
King                           24000                                                                                    
Kochhar                        17000                                                                                    
De Haan                        17000                                                                                    
Lorentz                         4200                                                                                    
Rajs                            3500                                                                                    
Davies                          3100                                                                                    
Matos                           2600                                                                                    
Vargas                          2500                                                                                    
Whalen                          4400                                                                                    
Hartstein                      13000                                                                                    

10 rows selected.

HR@orcl> select last_name, job_id, hire_date
  2  from employees
  3  where last_name IN ('Matos','Taylor')
  4  order by hire_date;

LAST_NAME                 JOB_ID     HIRE_DATE                                                                          
------------------------- ---------- ---------                                                                          
Matos                     ST_CLERK   15-MAR-98                                                                          
Taylor                    SA_REP     24-MAR-98                                                                          

HR@orcl> 1  select last_name, department_id
  2  from employees
  3  where department_id IN(20,50)
  4* order by last_name

LAST_NAME                 DEPARTMENT_ID                                                                                 
------------------------- -------------                                                                                 
Davies                               50                                                                                 
Fay                                  20                                                                                 
Hartstein                            20                                                                                 
Matos                                50                                                                                 
Mourgos                              50                                                                                 
Rajs                                 50                                                                                 
Vargas                               50                                                                                 

7 rows selected.

HR@orcl>  1  select last_name"Employee", salary "Monthly Salary"
  2  from employees
  3  where salary between 5000 and 12000
  4* and department_id IN(20, 50)
HR@orcl> /

Employee                  Monthly Salary                                                                                
------------------------- --------------                                                                                
Fay                                 6000                                                                                
Mourgos                             5800                                                                                

HR@orcl> select last_name, hire_date
  2  from employees
  3  where hire_date like '%94';

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
Higgins                   07-JUN-94                                                                                     
Gietz                     07-JUN-94                                                                                     

HR@orcl> select last_name, job_id
  2  from employees
  3  where manager_id is null;

LAST_NAME                 JOB_ID                                                                                        
------------------------- ----------                                                                                    
King                      AD_PRES                                                                                       

HR@orcl> 1  select last_name, salary, commission_pct
  2  from employees
  3  where commission_pct is not null
  4* order by salary desc, commission_pct desc
HR@orcl> /

LAST_NAME                     SALARY COMMISSION_PCT                                                                     
------------------------- ---------- --------------                                                                     
Abel                           11000             .3                                                                     
Zlotkey                        10500             .2                                                                     
Taylor                          8600             .2                                                                     
Grant                           7000            .15                                                                     

HR@orcl> select last_name
  2  from employees
  3  where last_name like '_a%';

LAST_NAME                                                                                                               
-------------------------                                                                                               
Davies                                                                                                                  
Fay                                                                                                                     
Hartstein                                                                                                               
Matos                                                                                                                   
Rajs                                                                                                                    
Taylor                                                                                                                  
Vargas                                                                                                                  

7 rows selected.

HR@orcl> select last_name from employees
  2  where last_name like'%a%'
  3  and last_name like'%a%';

LAST_NAME                                                                                                               
-------------------------                                                                                               
Davies                                                                                                                  
De Haan                                                                                                                 
Fay                                                                                                                     
Grant                                                                                                                   
Hartstein                                                                                                               
Kochhar                                                                                                                 
Matos                                                                                                                   
Rajs                                                                                                                    
Taylor                                                                                                                  
Vargas                                                                                                                  
Whalen                                                                                                                  

11 rows selected.

HR@orcl> select last_name, job_id, salary
  2  from employees
  3  where job_id IN ('SA_REP','ST_CLERK')
  4  AND salary not in (2500,3500,7000);

LAST_NAME                 JOB_ID         SALARY                                                                         
------------------------- ---------- ----------                                                                         
Abel                      SA_REP          11000                                                                         
Taylor                    SA_REP           8600                                                                         
Davies                    ST_CLERK         3100                                                                         
Matos                     ST_CLERK         2600                                                                         

HR@orcl> select last_name "Employee", salary "Monthly Salary", commission_pct
  2  from employees
  3  where commission_pct = .20;

Employee                  Monthly Salary COMMISSION_PCT                                                                 
------------------------- -------------- --------------                                                                 
Zlotkey                            10500             .2                                                                 
Taylor                              8600             .2                                                                 

HR@orcl> select sysdate "Date" FROM dual;

Date                                                                                                                    
---------                                                                                                               
24-JAN-18                                                                                                               

HR@orcl>  1  select employee_id, last_name, salary, ROUND(salary * 1.15, 0) "New salary"
  2* from employees
HR@orcl> /

EMPLOYEE_ID LAST_NAME                     SALARY New salary                                                             
----------- ------------------------- ---------- ----------                                                             
        100 King                           24000      27600                                                             
        101 Kochhar                        17000      19550                                                             
        102 De Haan                        17000      19550                                                             
        103 Hunold                          9000      10350                                                             
        104 Ernst                           6000       6900                                                             
        107 Lorentz                         4200       4830                                                             
        124 Mourgos                         5800       6670                                                             
        141 Rajs                            3500       4025                                                             
        142 Davies                          3100       3565                                                             
        143 Matos                           2600       2990                                                             
        144 Vargas                          2500       2875                                                             

EMPLOYEE_ID LAST_NAME                     SALARY New salary                                                             
----------- ------------------------- ---------- ----------                                                             
        149 Zlotkey                        10500      12075                                                             
        174 Abel                           11000      12650                                                             
        176 Taylor                          8600       9890                                                             
        178 Grant                           7000       8050                                                             
        200 Whalen                          4400       5060                                                             
        201 Hartstein                      13000      14950                                                             
        202 Fay                             6000       6900                                                             
        205 Higgins                        12000      13800                                                             
        206 Gietz                           8300       9545                                                             

20 rows selected.

HR@orcl> save lav03_02.sql
Created file lav03_02.sql
HR@orcl> @lab03_02.sql
SP2-0310: unable to open file "lab03_02.sql"
HR@orcl> ed lav03_02.sql

HR@orcl> /

EMPLOYEE_ID LAST_NAME                     SALARY New salary                                                             
----------- ------------------------- ---------- ----------                                                             
        100 King                           24000      27600                                                             
        101 Kochhar                        17000      19550                                                             
        102 De Haan                        17000      19550                                                             
        103 Hunold                          9000      10350                                                             
        104 Ernst                           6000       6900                                                             
        107 Lorentz                         4200       4830                                                             
        124 Mourgos                         5800       6670                                                             
        141 Rajs                            3500       4025                                                             
        142 Davies                          3100       3565                                                             
        143 Matos                           2600       2990                                                             
        144 Vargas                          2500       2875                                                             

EMPLOYEE_ID LAST_NAME                     SALARY New salary                                                             
----------- ------------------------- ---------- ----------                                                             
        149 Zlotkey                        10500      12075                                                             
        174 Abel                           11000      12650                                                             
        176 Taylor                          8600       9890                                                             
        178 Grant                           7000       8050                                                             
        200 Whalen                          4400       5060                                                             
        201 Hartstein                      13000      14950                                                             
        202 Fay                             6000       6900                                                             
        205 Higgins                        12000      13800                                                             
        206 Gietz                           8300       9545                                                             

20 rows selected.

HR@orcl>  1  select UPPER(last_name) "Name", LENGTH(last_name) "Length"
  2  from employees
  3  where last_name like'J%'
  4  or last_name like'M%'
  5  or last_name like'A%'
  6* order by last_name
HR@orcl> /

Name                          Length                                                                                    
------------------------- ----------                                                                                    
ABEL                               4                                                                                    
MATOS                              5                                                                                    
MOURGOS                            7                                                                                    

HR@orcl>  1  select last_name,ROUND(MONTHS_BETWEEN (SYSDATE, hire_date)) MONTHS_WORKED
  2  FROM employees
  3* order by MONTHS_BETWEEN(SYSDATE, hire_date)
HR@orcl> /

LAST_NAME                 MONTHS_WORKED                                                                                 
------------------------- -------------                                                                                 
Zlotkey                             216                                                                                 
Mourgos                             218                                                                                 
Grant                               224                                                                                 
Lorentz                             228                                                                                 
Vargas                              235                                                                                 
Taylor                              238                                                                                 
Matos                               238                                                                                 
Fay                                 245                                                                                 
Davies                              252                                                                                 
Abel                                260                                                                                 
Hartstein                           263                                                                                 

LAST_NAME                 MONTHS_WORKED                                                                                 
------------------------- -------------                                                                                 
Rajs                                267                                                                                 
Higgins                             284                                                                                 
Gietz                               284                                                                                 
De Haan                             300                                                                                 
Ernst                               320                                                                                 
Hunold                              337                                                                                 
Kochhar                             340                                                                                 
Whalen                              364                                                                                 
King                                367                                                                                 

20 rows selected.

HR@orcl> 1  select last_name, LPAD(salary, 15,'$') salary
  2* from employees
HR@orcl> /

LAST_NAME                 SALARY                                                                                        
------------------------- ------------------------------------------------------------                                  
King                      $$$$$$$$$$24000                                                                               
Kochhar                   $$$$$$$$$$17000                                                                               
De Haan                   $$$$$$$$$$17000                                                                               
Hunold                    $$$$$$$$$$$9000                                                                               
Ernst                     $$$$$$$$$$$6000                                                                               
Lorentz                   $$$$$$$$$$$4200                                                                               
Mourgos                   $$$$$$$$$$$5800                                                                               
Rajs                      $$$$$$$$$$$3500                                                                               
Davies                    $$$$$$$$$$$3100                                                                               
Matos                     $$$$$$$$$$$2600                                                                               
Vargas                    $$$$$$$$$$$2500                                                                               

LAST_NAME                 SALARY                                                                                        
------------------------- ------------------------------------------------------------                                  
Zlotkey                   $$$$$$$$$$10500                                                                               
Abel                      $$$$$$$$$$11000                                                                               
Taylor                    $$$$$$$$$$$8600                                                                               
Grant                     $$$$$$$$$$$7000                                                                               
Whalen                    $$$$$$$$$$$4400                                                                               
Hartstein                 $$$$$$$$$$13000                                                                               
Fay                       $$$$$$$$$$$6000                                                                               
Higgins                   $$$$$$$$$$12000                                                                               
Gietz                     $$$$$$$$$$$8300                                                                               

20 rows selected.

HR@orcl> select last_name, trunc((SYSDATE-hire_date)/7) AS TENURE
  2  FROM employees
  3  where department_id = 90
  4  order by tenure desc;

LAST_NAME                     TENURE                                                                                    
------------------------- ----------                                                                                    
King                            1597                                                                                    
Kochhar                         1478                                                                                    
De Haan                         1306                                                                                    

HR@orcl> select last_name || ' earn ' || TO_CHAR(salary,'fm$99,999.00') || 'monthly but wants'
  2  ||TO_CHAR(salary * 3, 'fm$99,999.00') || '.' "Dream Salaries"
  3  from employees;

Dream Salaries                                                                                                          
-----------------------------------------------------------------------                                                 
King earn $24,000.00monthly but wants$72,000.00.                                                                        
Kochhar earn $17,000.00monthly but wants$51,000.00.                                                                     
De Haan earn $17,000.00monthly but wants$51,000.00.                                                                     
Hunold earn $9,000.00monthly but wants$27,000.00.                                                                       
Ernst earn $6,000.00monthly but wants$18,000.00.                                                                        
Lorentz earn $4,200.00monthly but wants$12,600.00.                                                                      
Mourgos earn $5,800.00monthly but wants$17,400.00.                                                                      
Rajs earn $3,500.00monthly but wants$10,500.00.                                                                         
Davies earn $3,100.00monthly but wants$9,300.00.                                                                        
Matos earn $2,600.00monthly but wants$7,800.00.                                                                         
Vargas earn $2,500.00monthly but wants$7,500.00.                                                                        

Dream Salaries                                                                                                          
-----------------------------------------------------------------------                                                 
Zlotkey earn $10,500.00monthly but wants$31,500.00.                                                                     
Abel earn $11,000.00monthly but wants$33,000.00.                                                                        
Taylor earn $8,600.00monthly but wants$25,800.00.                                                                       
Grant earn $7,000.00monthly but wants$21,000.00.                                                                        
Whalen earn $4,400.00monthly but wants$13,200.00.                                                                       
Hartstein earn $13,000.00monthly but wants$39,000.00.                                                                   
Fay earn $6,000.00monthly but wants$18,000.00.                                                                          
Higgins earn $12,000.00monthly but wants$36,000.00.                                                                     
Gietz earn $8,300.00monthly but wants$24,900.00.                                                                        

20 rows selected.

HR@orcl> select last_name, LPAD(salary, 15,'$') SALARY
  2  FROM employees;

LAST_NAME                 SALARY                                                                                        
------------------------- ------------------------------------------------------------                                  
King                      $$$$$$$$$$24000                                                                               
Kochhar                   $$$$$$$$$$17000                                                                               
De Haan                   $$$$$$$$$$17000                                                                               
Hunold                    $$$$$$$$$$$9000                                                                               
Ernst                     $$$$$$$$$$$6000                                                                               
Lorentz                   $$$$$$$$$$$4200                                                                               
Mourgos                   $$$$$$$$$$$5800                                                                               
Rajs                      $$$$$$$$$$$3500                                                                               
Davies                    $$$$$$$$$$$3100                                                                               
Matos                     $$$$$$$$$$$2600                                                                               
Vargas                    $$$$$$$$$$$2500                                                                               

LAST_NAME                 SALARY                                                                                        
------------------------- ------------------------------------------------------------                                  
Zlotkey                   $$$$$$$$$$10500                                                                               
Abel                      $$$$$$$$$$11000                                                                               
Taylor                    $$$$$$$$$$$8600                                                                               
Grant                     $$$$$$$$$$$7000                                                                               
Whalen                    $$$$$$$$$$$4400                                                                               
Hartstein                 $$$$$$$$$$13000                                                                               
Fay                       $$$$$$$$$$$6000                                                                               
Higgins                   $$$$$$$$$$12000                                                                               
Gietz                     $$$$$$$$$$$8300                                                                               

20 rows selected.

HR@orcl> 1  select last_name, hire_date, TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'MONDAY'),'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
  2* FROM employees
HR@orcl> /

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
King                      17-JUN-87                                                                                     
Monday, the Twenty-First of December, 1987                                                                              
                                                                                                                        
Kochhar                   21-SEP-89                                                                                     
Monday, the Twenty-Sixth of March, 1990                                                                                 
                                                                                                                        
De Haan                   13-JAN-93                                                                                     
Monday, the Nineteenth of July, 1993                                                                                    
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Hunold                    03-JAN-90                                                                                     
Monday, the Ninth of July, 1990                                                                                         
                                                                                                                        
Ernst                     21-MAY-91                                                                                     
Monday, the Twenty-Fifth of November, 1991                                                                              
                                                                                                                        
Lorentz                   07-FEB-99                                                                                     
Monday, the Ninth of August, 1999                                                                                       
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Mourgos                   16-NOV-99                                                                                     
Monday, the Twenty-Second of May, 2000                                                                                  
                                                                                                                        
Rajs                      17-OCT-95                                                                                     
Monday, the Twenty-Second of April, 1996                                                                                
                                                                                                                        
Davies                    29-JAN-97                                                                                     
Monday, the Fourth of August, 1997                                                                                      
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Matos                     15-MAR-98                                                                                     
Monday, the Twenty-First of September, 1998                                                                             
                                                                                                                        
Vargas                    09-JUL-98                                                                                     
Monday, the Eleventh of January, 1999                                                                                   
                                                                                                                        
Zlotkey                   29-JAN-00                                                                                     
Monday, the Thirty-First of July, 2000                                                                                  
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Abel                      11-MAY-96                                                                                     
Monday, the Eighteenth of November, 1996                                                                                
                                                                                                                        
Taylor                    24-MAR-98                                                                                     
Monday, the Twenty-Eighth of September, 1998                                                                            
                                                                                                                        
Grant                     24-MAY-99                                                                                     
Monday, the Twenty-Ninth of November, 1999                                                                              
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Whalen                    17-SEP-87                                                                                     
Monday, the Twenty-First of March, 1988                                                                                 
                                                                                                                        
Hartstein                 17-FEB-96                                                                                     
Monday, the Nineteenth of August, 1996                                                                                  
                                                                                                                        
Fay                       17-AUG-97                                                                                     
Monday, the Twenty-Third of February, 1998                                                                              
                                                                                                                        

LAST_NAME                 HIRE_DATE                                                                                     
------------------------- ---------                                                                                     
REVIEW                                                                                                                  
------------------------------------------------------------------------------------------------------                  
Higgins                   07-JUN-94                                                                                     
Monday, the Twelfth of December, 1994                                                                                   
                                                                                                                        
Gietz                     07-JUN-94                                                                                     
Monday, the Twelfth of December, 1994                                                                                   
                                                                                                                        

20 rows selected.

HR@orcl> select last_name, hire_date, TO_CHAR(hire_date, 'DAY') DAY
  2  FROM employees
  3  order by TO_CHAR(hire_date - 1, 'd');

LAST_NAME                 HIRE_DATE DAY                                                                                 
------------------------- --------- ------------------------------------                                                
Grant                     24-MAY-99 MONDAY                                                                              
Gietz                     07-JUN-94 TUESDAY                                                                             
Taylor                    24-MAR-98 TUESDAY                                                                             
Higgins                   07-JUN-94 TUESDAY                                                                             
Rajs                      17-OCT-95 TUESDAY                                                                             
Mourgos                   16-NOV-99 TUESDAY                                                                             
Ernst                     21-MAY-91 TUESDAY                                                                             
Davies                    29-JAN-97 WEDNESDAY                                                                           
King                      17-JUN-87 WEDNESDAY                                                                           
De Haan                   13-JAN-93 WEDNESDAY                                                                           
Hunold                    03-JAN-90 WEDNESDAY                                                                           

LAST_NAME                 HIRE_DATE DAY                                                                                 
------------------------- --------- ------------------------------------                                                
Vargas                    09-JUL-98 THURSDAY                                                                            
Kochhar                   21-SEP-89 THURSDAY                                                                            
Whalen                    17-SEP-87 THURSDAY                                                                            
Hartstein                 17-FEB-96 SATURDAY                                                                            
Zlotkey                   29-JAN-00 SATURDAY                                                                            
Abel                      11-MAY-96 SATURDAY                                                                            
Matos                     15-MAR-98 SUNDAY                                                                              
Lorentz                   07-FEB-99 SUNDAY                                                                              
Fay                       17-AUG-97 SUNDAY                                                                              

20 rows selected.

HR@orcl> select last_name, NVL(TO_CHAR(commission_pct), 'No Commission') COMM
  2  FROM employees;

LAST_NAME                 COMM                                                                                          
------------------------- ----------------------------------------                                                      
King                      No Commission                                                                                 
Kochhar                   No Commission                                                                                 
De Haan                   No Commission                                                                                 
Hunold                    No Commission                                                                                 
Ernst                     No Commission                                                                                 
Lorentz                   No Commission                                                                                 
Mourgos                   No Commission                                                                                 
Rajs                      No Commission                                                                                 
Davies                    No Commission                                                                                 
Matos                     No Commission                                                                                 
Vargas                    No Commission                                                                                 

LAST_NAME                 COMM                                                                                          
------------------------- ----------------------------------------                                                      
Zlotkey                   .2                                                                                            
Abel                      .3                                                                                            
Taylor                    .2                                                                                            
Grant                     .15                                                                                           
Whalen                    No Commission                                                                                 
Hartstein                 No Commission                                                                                 
Fay                       No Commission                                                                                 
Higgins                   No Commission                                                                                 
Gietz                     No Commission                                                                                 

20 rows selected.

HR@orcl> 1  select  rpad(last_name,8)||''||rpad('',salary/1000+1, '*') EMPLOYEES_AND_THEIR_SALARIES
  2  FROM employees
  3* order by salary desc
HR@orcl> /

EMPLOYEES_AND_THEIR_SALARIES                                                                                            
------------------------------------------------------------------------------------------------------------------------
King                                                                                                                    
Kochhar                                                                                                                 
De Haan                                                                                                                 
Hartstei                                                                                                                
Higgins                                                                                                                 
Abel                                                                                                                    
Zlotkey                                                                                                                 
Hunold                                                                                                                  
Taylor                                                                                                                  
Gietz                                                                                                                   
Grant                                                                                                                   

EMPLOYEES_AND_THEIR_SALARIES                                                                                            
------------------------------------------------------------------------------------------------------------------------
Ernst                                                                                                                   
Fay                                                                                                                     
Mourgos                                                                                                                 
Whalen                                                                                                                  
Lorentz                                                                                                                 
Rajs                                                                                                                    
Davies                                                                                                                  
Matos                                                                                                                   
Vargas                                                                                                                  

20 rows selected.

HR@orcl> 1  select job_id, decode (job_id, 'ST_CLERK', 'E',
  2  					'SA_REP',   'D',
  3  					'IT_PROG',  'C',
  4  					'ST_MAN',   'B',
  5  					'AD_PRES',  'A',
  6  						    '0') GRADE
  7* FROM employees
HR@orcl> /

JOB_ID     G                                                                                                            
---------- -                                                                                                            
AC_ACCOUNT 0                                                                                                            
AC_MGR     0                                                                                                            
AD_ASST    0                                                                                                            
AD_PRES    A                                                                                                            
AD_VP      0                                                                                                            
AD_VP      0                                                                                                            
IT_PROG    C                                                                                                            
IT_PROG    C                                                                                                            
IT_PROG    C                                                                                                            
MK_MAN     0                                                                                                            
MK_REP     0                                                                                                            

JOB_ID     G                                                                                                            
---------- -                                                                                                            
SA_MAN     0                                                                                                            
SA_REP     D                                                                                                            
SA_REP     D                                                                                                            
SA_REP     D                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_MAN     B                                                                                                            

20 rows selected.

HR@orcl> select job_id, CASE job_id WHEN 'ST_CLERK' THEN 'E'
  2  				WHEN 'SA_REP' THEN 'D'
  3  				WHEN 'IT_PROG' THEN 'C'
  4  				WHEN 'ST_MAN' THEN 'B'
  5  				WHEN 'AD_PRES' THEN 'A'
  6  				ELSE '0' END GRADE
  7  FROM employees;

JOB_ID     G                                                                                                            
---------- -                                                                                                            
AC_ACCOUNT 0                                                                                                            
AC_MGR     0                                                                                                            
AD_ASST    0                                                                                                            
AD_PRES    A                                                                                                            
AD_VP      0                                                                                                            
AD_VP      0                                                                                                            
IT_PROG    C                                                                                                            
IT_PROG    C                                                                                                            
IT_PROG    C                                                                                                            
MK_MAN     0                                                                                                            
MK_REP     0                                                                                                            

JOB_ID     G                                                                                                            
---------- -                                                                                                            
SA_MAN     0                                                                                                            
SA_REP     D                                                                                                            
SA_REP     D                                                                                                            
SA_REP     D                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_CLERK   E                                                                                                            
ST_MAN     B                                                                                                            

20 rows selected.

HR@orcl> spool off
