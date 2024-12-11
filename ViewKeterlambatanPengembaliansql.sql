CREATE VIEW viewlatereturn AS
SELECT c.Name, b.DueDate, r.ReturnDate, DATEDIFF(DAY, r.ReturnDate, b.DueDate) AS Terlambat_tanggal
FROM
	Customers c
JOIN
	Borrows b ON c.CusID = b.CustomersCusID
JOIN
	Returns r ON b.BorrowID = r.BorrowsBorrowID
WHERE
	r.ReturnDate > b.DueDate;