

CREATE PROCEDURE sspINSERT
@PK_EMPLOYEEID INT ,
 @FIRST_NAME VARCHAR(30),
 @LAST_NAME VARCHAR(30),
 @SEX CHAR,@DATE_OF_BIRTH DATE,
 @PHONE_NO VARCHAR(10),
 @WORK_DEPT VARCHAR(20),
 @JOB VARCHAR(20),
 @HIREDATE DATE,@SALARY DECIMAL(9,2)
 AS
 INSERT INTO EMPLOYEES (
 PK_EMPLOYEEID   ,
 FIRST_NAME,
 LAST_NAME ,
 SEX ,DATE_OF_BIRTH ,
 PHONE_NO ,
 WORK_DEPT ,
 JOB,
 HIREDATE ,SALARY
 )
 VALUES(
 @PK_EMPLOYEEID   ,
 @FIRST_NAME,
 @LAST_NAME ,
 @SEX ,@DATE_OF_BIRTH ,
 @PHONE_NO ,
 @WORK_DEPT ,
 @JOB,
 @HIREDATE ,@SALARY
 )

 EXEC  sspINSERT

 15,'ASHWIN','K','M','1998-02-11','9854321475','IT','ANALYST','2023-07-01','15000'