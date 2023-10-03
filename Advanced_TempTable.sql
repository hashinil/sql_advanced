CREATE TABLE #Temp_Employee1 (
EmployeeID int,
JobTitle varchar(50),
Salary int
);

INSERT INTO #Temp_Employee1 VALUES (
'1020', 'HR', 50000
);

INSERT INTO #Temp_Employee1
SELECT * 
FROM EmployeeSalary;

SELECT * FROM #Temp_Employee1;

-- ---------------------------------------------

CREATE TABLE #Temp_Employee2 (
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
);

INSERT INTO #Temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM EmployeeDemographics demo
JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID
GROUP BY JobTitle;


SELECT * FROM #Temp_Employee2;