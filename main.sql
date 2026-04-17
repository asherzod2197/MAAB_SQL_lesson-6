-- 1

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- 2

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- 3

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- 4

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- 5

SELECT d.DepartmentName, SUM(e.Salary) AS TotalSalary
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;


-- 6

SELECT d.DepartmentName, p.ProjectName
FROM Departments d
CROSS JOIN Projects p;


-- 7

SELECT e.EmployeeID, e.Name, d.DepartmentName, p.ProjectName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
LEFT JOIN Projects p
ON e.EmployeeID = p.EmployeeID;
