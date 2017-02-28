/* Exercise - 12 : Select the name and last name of employees working for departments with a budget greater than $60,000. */

SELECT Employees.Name, Lastname
FROM Employees JOIN Departments ON Department = Code
Where Budget > 60000;
