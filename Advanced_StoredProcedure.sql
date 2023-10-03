CREATE PROCEDURE TEST 
AS 
SELECT * 
FROM EmployeeDemographics;

EXEC TEST;

-- ---------------------
CREATE PROCEDURE Temp_Employee4 
AS
CREATE TABLE #temp_Employee (
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
);

INSERT INTO #temp_Employee 
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM EmployeeDemographics demo
JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID
GROUP BY JobTitle;

SELECT * 
FROM #temp_Employee;

EXEC Temp_Employee4;

-- -After modify
EXEC Temp_Employee4 @jobtitle = 'Salesman';

