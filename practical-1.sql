
CREATE TABLE Product(
 
productID INT IDENTITY(1,1) PRIMARY KEY,
productName varchar(500) NOT NULL,
productCategroy varchar(50)NOT NULL,
productPrice DECIMAL(19,4)NOT NULL,
CHECK (productPrice>0)
);
GO

ALTER TABLE Product
ADD productDescription varchar(255);
GO

--add 10 records of products

INSERT INTO Product VALUES('Vivo','Mobile','20000','vivo is a world leading brand of innovative smartphones');
INSERT INTO Product VALUES('IPhone14','Mobile','100000','Powerful. Beautiful. Durable. 5G');
INSERT INTO Product VALUES('Apple','Frute','30','Is a frute');
INSERT INTO Product VALUES('sanitizer','Helth','500','use to clean Hands');
INSERT INTO Product VALUES('medicine','Helth','20','Take When You are not feeling well');
INSERT INTO Product VALUES('injection','Helth','150','Take when You have a fever');
INSERT INTO Product VALUES('bat','sports','1000','Used to play cricket');
INSERT INTO Product VALUES('football','sports','500','from Adidas');
INSERT INTO Product VALUES('vollyball','sports','1100','from Nike');
INSERT INTO Product VALUES('T-shirts','clothing','1000','mens where clothing');
INSERT INTO Product VALUES('shorts','clothing','500','summer fashion');
GO

--Query to List all the products belonging to health category
Select * from Product where productCategroy='Helth';
Go

-- Query to get total price of all products
select sum(productPrice)As Total from Product;
GO

--query to display product in descending order of price
select * from product ORDER BY productPrice DESC;
GO

--Query to display category wise product count having price greater than  10000
select count(productID)AS Total ,productCategroy from Product where productPrice >'10000' GROUP BY productCategroy
Go