/* Exercise - 16 : Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.  Add an employee called "Mary Moore" in that department, with SSN 847-21-9811. */

INSERT INTO Departments
	(Code, Name, Budget)
VALUES (11, 'Quality Assurance', 40000);

INSERT INTO Employees
	(SSN, Name, LastName, Department)
VALUES(847219811, 'Mary', 'Moore', 11);
