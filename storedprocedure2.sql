use project;
--read opeartion in stored procedure--
CREATE PROCEDURE GetEmployee
(
@PK_EMPLOYEEID INT 
)
AS
BEGIN
  SELECT * FROM Employees WHERE PK_EMPLOYEEID= @PK_EMPLOYEEID
END

exec GetEmployee

2

--upadte in stored procedures--
 
 CREATE PROCEDURE UpdateEmployee
 (
 @PK_EMPLOYEEID INT,
 @SALARY DECIMAL(9,2),
 @WORK_DEPT VARCHAR(20)
 )
 AS
  BEGIN 
     UPDATE EMPLOYEES
	  SET SALARY=@SALARY,
	  WORK_DEPT=@WORK_DEPT
	  WHERE
	  PK_EMPLOYEEID= @PK_EMPLOYEEID

	  END


EXEC  UpdateEmployee 
@PK_EMPLOYEEID=2,
@SALARY=20000,
@WORK_DEPT='ANALYST'


--DELETE IN STORED PROCEDURE--


CREATE PROCEDURE DeleteEmployee
(
  @PK_EMPLOYEEID int
)
AS
BEGIN
  DELETE FROM Employees WHERE PK_EMPLOYEEID = @PK_EMPLOYEEID
END

EXEC DeleteEmployee 6