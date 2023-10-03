SELECT * 
FROM EmployeeSalary;

-- SELECT

SELECT AVG(Salary) 
FROM EmployeeSalary;

SELECT EmployeeID, Salary 
FROM EmployeeSalary;

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) as AvgSalary 
FROM EmployeeSalary;

--FROM
SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary 
FROM EmployeeSalary

SELECT a.EmployeeID, a.AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary 
		FROM EmployeeSalary) a;

-- Where
SELECT EmployeeID 
FROM EmployeeDemographics
WHERE Age > 30;

SELECT EmployeeID, Salary,JobTitle 
FROM EmployeeSalary
WHERE EmployeeID IN 
		(SELECT EmployeeID 
		FROM EmployeeDemographics
		WHERE Age > 30);