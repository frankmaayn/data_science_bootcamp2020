USE assignment3;


/*****Who are the employees assigned to each project? Show ProjectID, EmployeeNumber, LastName, FirstName, and OfficePhone. ******/
SELECT  ASSIGNMENT.ProjectID, 
        EMPLOYEE.EmployeeNumber, 
        EMPLOYEE.LastName,
		EMPLOYEE.FirstName,
        EMPLOYEE.OfficePhone
FROM ASSIGNMENT 
JOIN EMPLOYEE
ON ASSIGNMENT.EmployeeNumber = EMPLOYEE.EmployeeNumber
ORDER BY ASSIGNMENT.ProjectID;

/******Who are the employees assigned to each project? Show ProjectID, ProjectName, and Department. Show EmployeeNumber, LastName, FirstName, and OfficePhone. ***/
SELECT PROJECT.ProjectID,
	   PROJECT.ProjectName,
       PROJECT.Department,
       EMPLOYEE.EmployeeNumber,
       EMPLOYEE.LastName,
       EMPLOYEE.FirstName,
       EMPLOYEE.OfficePhone
FROM ASSIGNMENT 
JOIN EMPLOYEE
ON ASSIGNMENT.EmployeeNUmber = EMPLOYEE.EmployeeNumber
JOIN PROJECT
ON ASSIGNMENT.ProjectID = PROJECT.ProjectID
ORDER BY PROJECT.ProjectID;

/****Who are the employees assigned to projects run by the Sales and Marketing Department? Show ProjectID, ProjectName, Department, and DepartmentPhone. Show EmployeeNumber, LastName, FirstName, and OfficePhone.  Sort by ProjectID in ascending order. ***/
SELECT PROJECT.ProjectID,
       PROJECT.ProjectName,
       PROJECT.Department,
       DEPARTMENT.DepartmentPhone,
       EMPLOYEE.EmployeeNumber,
       EMPLOYEE.LastName,
       EMPLOYEE.FirstName,
       EMPLOYEE.OfficePhone
FROM ASSIGNMENT 
JOIN PROJECT
ON ASSIGNMENT.ProjectID = PROJECT.ProjectID
JOIN EMPLOYEE
ON ASSIGNMENT.EmployeeNumber = EMPLOYEE.EmployeeNumber
JOIN DEPARTMENT
ON PROJECT.Department = DEPARTMENT.DepartmentName
WHERE PROJECT.Department = 'Sales and Marketing'
ORDER BY PROJECT.ProjectID;

/******How many projects are being run by the Sales and Marketing Department? Be sure to assign an appropriate column name to the computed results.***/
SELECT COUNT(*) AS NumberOfMarketingDeptProjects
FROM PROJECT
WHERE PROJECT.Department = 'Sales and Marketing';

/*****What is the total MaxHours of projects being run by the Sales and Marketing Department? Be sure to assign an appropriate column name to the computed results. ***/
SELECT SUM(MaxHours) AS TotalMaxHrsForMKTGDeptProjects
FROM PROJECT
WHERE PROJECT.Department = 'Sales and Marketing';

/***What is the average MaxHours of projects being run by the Sales and Marketing Department? Be sure to assign an appropriate column name to the computed results.***/
SELECT AVG(MaxHours) as AvgMaxHrsForMKTGDeptProjects
FROM PROJECT
WHERE PROJECT.Department = 'Sales and Marketing';

/***How many projects are being run by each department? Be sure to display each DepartmentName and to assign an appropriate column name to the computed results. ***/

SELECT Department, COUNT(ProjectID) as NUmberofDeptProjects
FROM PROJECT
GROUP BY Department

