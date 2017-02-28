/* Exercise - 13 : Select the departments with a budget larger than the average budget of all the departments. */

SELECT *
FROM Departments
WHERE Budget > (
	SELECT AVG(Budget)
	FROM Departments
	);
