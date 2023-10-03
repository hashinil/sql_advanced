CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
);

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired');

Select *
From EmployeeErrors;

-- TRIM, LRTIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTrim
FROM EmployeeErrors;

SELECT EmployeeID, LTRIM(EmployeeID) as IDLTrim
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) as IDRTrim
FROM EmployeeErrors;

-- Replace
SELECT LastName, REPLACE(LastName, ' - Fired','') as FixedLastName
FROM EmployeeErrors;

-- Substring
SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors;

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

-- UPPER/ LOWER
SELECT FirstName, UPPER(FirstName), LOWER(FirstName)
FROM EmployeeErrors;