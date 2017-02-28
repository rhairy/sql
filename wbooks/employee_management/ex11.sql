/* Exercise - 11 : Select the name and last name of each employee, along with the name and budget of the employee's department. */

SELECT Employees.Name, Employees.LastName, Departments.Name, Departments.Budget
FROM Employees JOIN Departments ON Employees.Department = Departments.Code;
