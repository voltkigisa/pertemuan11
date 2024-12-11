CREATE VIEW ViewBooksCategories AS 
SELECT b.Title, c.CategoryName
FROM Books b
join Categories c ON b.CategoriesCategoryID = c.CategoryID
