USE [SQLProject]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee4]    Script Date: 10/3/2023 12:21:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee4]
@JobTitle nvarchar(100)
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
WHERE JobTitle =  @JobTitle
GROUP BY JobTitle;

SELECT * 
FROM #temp_Employee;