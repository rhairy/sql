/* Exercise - 14 : Select the names of departments with more than two employees. */

SELECT Departments.Name, COUNT(*) AS Employee_Count
FROM Departments JOIN Employees ON Code = Department
GROUP BY Departments.Name
HAVING Employee_Count > 2;

