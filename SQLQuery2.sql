--Select 
--ANSII
--Case Insensitive 
SELECT ContactName Adi, CompanyName SirketAdi, City Sehir from Customers
Select * from Customers where City = 'Berlin'
select * from Products where categoryId = 1 or categoryId=3
select * from Products where categoryId = 1 and UnitPrice >=10

select * from Products order by ProductName

select * from Products order by CategoryID, ProductName

select * from Products order by UnitPrice --asc ascending artan  --desc descending azalan

select count(*) from Products

select count(*) from Products where CategoryID = 2

select categoryID, count(*) from Products group by CategoryID

select categoryID, count(*) from Products group by CategoryID having count(*)<10

select categoryID, count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID

--Inner Join sadece iki tabloda da eşleşenleri bir araya getirir.
--DTO Data Transformation Object
select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName from Products inner join Categories on Products.CategoryID = Categories.CategoryID

-- Tablo isminde boşluk olması durumunda köşeli parantez içerisinde yazılması halinde hatasız şekilde tablo getirilir.
select * from Products p inner join [Order Details] od on p.ProductID = od.ProductID

-- Products tablosunda olup Order Details tablosunda olmayanları da getir. --left join
select * from Products p left join [Order Details] od on p.ProductID = od.ProductID

select * from Customers c left join Orders o on c.CustomerID = o.CustomerID

select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null

select * from Products p left join [Order Details] od on p.ProductID = od.ProductID inner join Orders o on o.OrderID = od.OrderID


