create view BorrowsDetailLebihLanjut as
Select a.Name as CustName, b.Name as EmpName, e.Title as Book, c.BorrowDate, c.DueDate from Customers as a
inner join Borrows as c on a.CusID = c.CustomersCusID
inner join BorrowDetails as d on c.BorrowID = d.BorrowsBorrowID
inner join Books as e on d.BooksBookID = e.BookID
inner join Employees as b on c.AdminsEmpID = b.EmpID