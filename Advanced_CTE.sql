WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
	AVG(SALARY) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics demo
JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT *  
FROM CTE_Employee;

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
	AVG(SALARY) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics demo
JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT FirstName, AvgSalary  
FROM CTE_Employee;