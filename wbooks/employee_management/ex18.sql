/* Exercise - 18 : Reassign all employees from the Research department (code 77) to the IT departmen * t (code 14). */

UPDATE Employees
SET Department = 14 
WHERE Department = 77;
