create view PeminjamBukuSQL as
Select a.Title as Book,c.CategoryName , b.Name as CutName from books as a 
inner join BorrowDetails as d on a.BookID = d.BooksBookID
inner join Borrows as e on d.BorrowsBorrowID = e.BorrowID
inner join Customers as b on e.CustomersCusID = b.CusID
inner join Categories as c on a.CategoriesCategoryID = c.CategoryID
where c.CategoryName = 'SQL'