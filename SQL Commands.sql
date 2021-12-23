CREATE DATABASE Shop

USE Shop
CREATE TABLE Products(
Id int,
[Name] nvarchar(20),
Price int,
[Type] nvarchar(30),
)
ALTER TABLE Products
ADD ExpiredDate int

ALTER TABLE Products
ADD Category nvarchar(30)

ALTER TABLE Products
ADD [BrannndName] nvarchar(40)
exec sp_rename 'Products.BrannndName','Brand'



INSERT INTO Products(Id,Name,Price,Type,ExpiredDate,Category,Brand)
VALUES('1','Total Control',150,'foundation','2022','cosmetics','NYX PRofessionals'),
('2','Sugar Candy',259,'lipstick', '2028','cosmetics','Missha'),
('3','Fleur Musc',352,'parfum','2025','cosmetics','Narciso Rodriguez')

INSERT INTO Products
VALUES('4','Greek Gods',10,'yoghurt','2021','dairy products','Chobani'),
('5','WestGold',6,'butter','2022','dairy products','WG'),
('6','Brioche',53,'bread','2021','bakery products','France'),
('7','Yumm',42,'chestnut','2022','dry products','Chobani'),
('8','Salmon',29,'fish','2022','seafood','Mooshu'),
('9','Every',85,'shrimp','2022','freezing products','Aqua Star'),
('10','Strawberry',28,'milk','2021','dairy products','Milla'),
('11', 'Donut', 41, 'sweets', '2021', 'bakery products','Dunkin Donuts')


SELECT * from Products 
WHERE Price>(select AVG(Price) from Products)

SELECT Price from Products where Price>55

SELECT	(Name + '' + Brand) 'ProductDescription',Price,Type,Category from Products 
Where LEN(Brand)>5