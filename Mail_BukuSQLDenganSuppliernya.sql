create view BukuSQLDenganSupplierNya as
Select a.Title as Book,c.CategoryName , b.CompanyName as SupplierComp, b.ContactName as SupplierContact from books as a 
inner join Suppliers as b on a.SuppliersSupID = b.SupID
inner join Categories as c on a.CategoriesCategoryID = c.CategoryID
where c.CategoryName = 'SQL'