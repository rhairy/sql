SELECT Scientists.Name, Projects.Name, Projects.Hours
FROM Scientists JOIN AssignedTo ON Scientists.SSN = AssignedTo.Scientist
JOIN Projects ON AssignedTo.Project = Projects.Code
ORDER BY Projects.Name ASC, Scientists.Name ASC;
