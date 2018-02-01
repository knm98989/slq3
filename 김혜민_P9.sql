HR@orcl> CREATE TABLE my_employee
  2  (id NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL,
  3  last_name VARCHAR2(25),
  4  first_name VARCHAR2(25),
  5  userid VARCHAR2(8),
  6  salary NUMBER(9,2));

Table created.

HR@orcl> DESCRIBE my_employee
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 ID                                                                NOT NULL NUMBER(4)
 LAST_NAME                                                                  VARCHAR2(25)
 FIRST_NAME                                                                 VARCHAR2(25)
 USERID                                                                     VARCHAR2(8)
 SALARY                                                                     NUMBER(9,2)

HR@orcl> INSERT INTO my_employee
  2  values(1,'Patel','Ralph','rpatel',895);

1 row created.

HR@orcl>  INSERT INTO my_employee (id, last_name, first_name, userid,salary)
  2* VALUES (2, 'Dancs','Betty','bdancs',860)
HR@orcl> /

1 row created.

HR@orcl> select * from my_employee;

        ID LAST_NAME                 FIRST_NAME                USERID       SALARY                                      
---------- ------------------------- ------------------------- -------- ----------                                      
         1 Patel                     Ralph                     rpatel          895                                      
         2 Dancs                     Betty                     bdancs          860                                      

HR@orcl> ed loademp.sql

HR@orcl> @loademp.sql
HR@orcl> SET ECHO OFF
Enter value for p_id: 3
Enter value for p_last_name: Biri
Enter value for p_frist_name: Ben
Enter value for p_first_name: Ben
Enter value for p_last_name: Biri
Enter value for p_salary: 1100

1 row created.

HR@orcl> @loademp.sql
HR@orcl> SET ECHO OFF
Enter value for p_id: 4
Enter value for p_last_name: Newman
Enter value for p_frist_name: Chad
Enter value for p_first_name: Chad
Enter value for p_last_name: Newman
Enter value for p_salary: 750

1 row created.

HR@orcl> select * from my_employee;

        ID LAST_NAME                 FIRST_NAME                USERID       SALARY                                      
---------- ------------------------- ------------------------- -------- ----------                                      
         1 Patel                     Ralph                     rpatel          895                                      
         2 Dancs                     Betty                     bdancs          860                                      
         3 Biri                      Ben                       bbiri          1100                                      
         4 Newman                    Chad                      cnewman         750                                      

HR@orcl> commit;

Commit complete.

HR@orcl> update my_employee
  2  set last_name = 'Drexler'
  3  where id = 3;

1 row updated.

HR@orcl>  update my_employee
  2  set salary = 1000
  3* where salary < 900
HR@orcl> /

3 rows updated.

HR@orcl> select last_name, salary from my_employee;

LAST_NAME                     SALARY                                                                                    
------------------------- ----------                                                                                    
Patel                           1000                                                                                    
Dancs                           1000                                                                                    
Drexler                         1100                                                                                    
Newman                          1000                                                                                    

HR@orcl> delete from my_employee
  2  where last_name = 'Dancs';

1 row deleted.

HR@orcl> select * from my_employee;

        ID LAST_NAME                 FIRST_NAME                USERID       SALARY                                      
---------- ------------------------- ------------------------- -------- ----------                                      
         1 Patel                     Ralph                     rpatel         1000                                      
         3 Drexler                   Ben                       bbiri          1100                                      
         4 Newman                    Chad                      cnewman        1000                                      

HR@orcl> commit;

Commit complete.

HR@orcl> @loademp.sql
HR@orcl> SET ECHO OFF
Enter value for p_id: 5
Enter value for p_last_name: Ropeburn
Enter value for p_frist_name: Audery
Enter value for p_first_name: Audery
Enter value for p_last_name: Ropeburn
Enter value for p_salary: 1550

1 row created.

HR@orcl> select * from my_employee;

        ID LAST_NAME                 FIRST_NAME                USERID       SALARY                                      
---------- ------------------------- ------------------------- -------- ----------                                      
         1 Patel                     Ralph                     rpatel         1000                                      
         3 Drexler                   Ben                       bbiri          1100                                      
         4 Newman                    Chad                      cnewman        1000                                      
         5 Ropeburn                  Audery                    aropebur       1550                                      

HR@orcl> savepoint step_16;

Savepoint created.

HR@orcl> delete from my_employee;

4 rows deleted.

HR@orcl> select * from my_employee;

no rows selected

HR@orcl> rollback TO step_16;

Rollback complete.

HR@orcl> select * from my_employee;

        ID LAST_NAME                 FIRST_NAME                USERID       SALARY                                      
---------- ------------------------- ------------------------- -------- ----------                                      
         1 Patel                     Ralph                     rpatel         1000                                      
         3 Drexler                   Ben                       bbiri          1100                                      
         4 Newman                    Chad                      cnewman        1000                                      
         5 Ropeburn                  Audery                    aropebur       1550                                      

HR@orcl> commit;

Commit complete.

HR@orcl> spool off
