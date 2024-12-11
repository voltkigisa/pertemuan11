CREATE VIEW Statusemployee AS
SELECT EmpID, Name,
CASE 
	WHEN Status = 1 THEN 'Active'
	WHEN Status = 0 THEN 'Inactive'
END AS Status
FROM
	Employees;
