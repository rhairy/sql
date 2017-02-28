/* Exercise - 10 : Select all the data of employees, including each employee's department's data. */

SELECT *
FROM Employees JOIN Departments ON Department = Code;
