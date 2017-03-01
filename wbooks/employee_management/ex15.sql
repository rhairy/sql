/* Select the name and last name of employees working for departments with second lowest budget. */

SELECT Employees.Name, Employees.LastName
FROM Employees
WHERE Department = 
		(
		SELECT sub.Code
		FROM (SELECT * FROM Departments ORDER BY Budget LIMIT 2) sub 
		ORDER BY BUDGET DESC LIMIT 1
		);
