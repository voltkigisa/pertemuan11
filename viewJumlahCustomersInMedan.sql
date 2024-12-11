CREATE VIEW costomersInMedan AS
SELECT Count(Address) AS MedanCustomers
From 
	Customers
WHERE
	Address LIKE '%Medan';