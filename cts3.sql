create database cts3;
use cts3;
CREATE TABLE Product (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
ProductID INT,
Quantity INT,
OrderDate DATE,
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Product (ProductID, ProductName, Price)
VALUES
  (1, 'Laptop', 1000.00),
  (2, 'Mouse', 25.00),
  (3, 'Keyboard', 45.00),
  (4, 'Monitor', 150.00),
  (5, 'Webcam', 75.00);

INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate)
VALUES
  (101, 1, 2, '2025-08-01'),
  (102, 2, 5, '2025-08-02'),
  (103, 3, 3, '2025-08-03'),
  (104, 1, 1, '2025-08-04'),
  (105, 4, 2, '2025-08-04'),
  (106, 5, 4, '2025-08-05');
  select * from product;
  select * from orders;
  select productname,price from product;
SELECT 
  o.OrderID,
  p.ProductName,
  o.Quantity,
  p.Price,
  (o.Quantity * p.Price) AS TotalAmount
FROM 
  Orders o
JOIN 
  Product p ON o.ProductID = p.ProductID;
  select p.productname,p.productid,p.price from product p
  left join orders o on p.productid=o.productid
  where o.orders is null;
  SELECT 
  p.ProductID,
  p.ProductName,
  p.Price
FROM 
  Product p
LEFT JOIN 
  Orders o ON p.ProductID = o.ProductID
WHERE 
  o.OrderID IS NULL;
  select p.productName,o.Quantity from product p
  join o orders on o.productid=p.productid
  where sum(distinct quantity);
  select p.productid,p.productname,sum(o.quantity) as total from product p
  join orders o on p.productid=o.productid
  group by p.productid,p.productname;
  select p.productid,p.productname,o.quantity,o.orderdate from product p
  join orders o on p.productid=o.productid
  where o.orderdate=(select max(o2.orderdate) from orders o2 where o2.productid=p.productid);
  select o.orderid,p.productname,p.price from orders o
  join product p  on p.productid=o.productid;
  select p.productname,p.productid,p.price,o.orderid,o.orderdate,o.quantity from orders o
  join product p on o.productid=p.productid
  where o.orderdate>='2025-08-03';
select p.productname from product p 
join orders o on p.productid=o.productid 
where o.quantity>3;
select p.productname,p.price,o.orderid,o.quantity,o.orderdate from orders o
join product p on o.productid=p.productid;
select p.productname,o.quantity from product p
join orders o on p.productid=o.productid
group by p.productname,o.quantity
having sum(o.quantity);
select p.productid,p.productname,sum(p.price*o.quantity)as total from  product p
join orders o on p.productid=o.productid
group by p.productid,p.productname;
select p.productname,p.productid, count(o.orderid) as ordercount from product p
join orders o on p.productid=o.productid
group by p.productname,p.productid;
select p.productid,p.productname,avg(o.quantity)as avgorder from product p
join orders o on p.productid=o.productid
group by p.productid,p.productname;
select p.productname,sum(p.price * o.quantity)as total from product p
join orders o on p.productid=o.productid
group by p.productname
order by total desc limit 1;
select p.productname from product p left join orders o on p.productid=o.productid;
select p.productname ,coalese(sum(o.quantity),0) as total from product p 
left join orders o on p.productid=o.productid
group by p.productname;
select p.productname from product p 
left join orders o on p.productid=o.productid
where p.productid is  not null;
select p.productname ,count(o.orderid)as ordercount,sum(p.price*o.quantity) as revenue from product p 
left join orders o on p.productid=o.productid
group by p.productname;
select p.productname ,max(o.orderdate) as recentorder from product p 
left join orders o on p.productid=o.productid
left join orders o on od.orderid=o.orderid
group by p.productname;
 
  

