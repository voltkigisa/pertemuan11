CREATE VIEW ViewSupplierBooks AS
SELECT b.title, s.CompanyName, s.PhoneNum
FROM Books b
JOIN Suppliers s ON b.SuppliersSupID = s.SupID