CREATE VIEW ViewCustomersReturns AS 
SELECT c.Name as custname, c.Address as custaddress, c.PhoneNum, r.ReturnDate
FROM Customers as c
INNER JOIN Borrows as b ON c.CusID = b.CustomersCusID
inner join Returns as r on r.BorrowsBorrowID = b.BorrowID
