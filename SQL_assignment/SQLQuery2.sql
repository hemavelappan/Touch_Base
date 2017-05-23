
--To create Database
Create database Superstore_sales

Create database Superstore_profit

--To use particular Database

USE Superstore_sales;

--To delete particular Database

DROP database Superstore_profit

--To create a sample table with Datatype and constraints


Create table CUSTOMERS(
ID INT NOT NULL,
NAME VARCHAR(20) NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR(25),
SALARY DECIMAL(18,2),
PRIMARY KEY(ID)
);

--To view the created table

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='CUSTOMERS'

--TO drop particular table

DROP Table CUSTOMERS

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='CUSTOMERS'

--Creating table with Orders SuperStore Sales input

CREATE table ORDERS(
Row_ID INT NOT NULL,
Order_ID INT NOT NULL,
Order_Date DATE NOT NULL,
Order_Priority CHAR(25),
Order_Quantity VARCHAR(20),
Sales DECIMAL(18,5),
Discount DECIMAL(18,5),
Ship_mode CHAR(25),
Profit  DECIMAL(18,5),
Unit_Price  DECIMAL(18,5),
Shipping_cost DECIMAL(18,5),
Customer_Name CHAR(25),
Province CHAR(25),
Region CHAR(25),
Customer_Segment text,
Product_Category text,
Product_Sub_Category text,
Product_Name text,
Product_container CHAR(25),
Product_Base_Margin CHAR(25),
Ship_Date DATE NOT NULL,
);

select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='ORDERS'

--To insert values

INSERT INTO ORDERS (Row_ID,Order_ID,Order_Date,Order_Priority,Order_Quantity,Sales,Discount,Ship_mode,Profit,Unit_Price,Shipping_cost,Customer_Name,Province,Region,Customer_Segment,
Product_Category,Product_Sub_Category,Product_Name,Product_container,Product_Base_Margin,Ship_Date)
VALUES (1,32, '2012-12-31', 'Low',6,261.54,0.04,'Regular Air',-213.25,38.94,35,'Muhammed MacIntyre','Nunavut','Nunavut','Small Business','Office Supplies','Storage & Organization','Eldon Base for stackable storage shelf, platinum','Large Box',0.8,'2010-12-20');

Select * FROM ORDERS;

--To Delete row

DELETE FROM ORDERS
WHERE Row_ID=1;

Select * FROM ORDERS;

INSERT INTO ORDERS (Row_ID,Order_ID,Order_Date,Order_Priority,Order_Quantity,Sales,Discount,Ship_mode,Profit,Unit_Price,Shipping_cost,Customer_Name,Province,Region,Customer_Segment,
Product_Category,Product_Sub_Category,Product_Name,Product_container,Product_Base_Margin,Ship_Date)
VALUES (1,32, '2012-12-31', 'Low',6,261.54,0.04,'Regular Air',-213.25,38.94,35,'Muhammed MacIntyre','Nunavut','Nunavut','Small Business','Office Supplies','Storage & Organization','Eldon Base for stackable storage shelf, platinum','Large Box',0.8,'2010-12-20');

--To insert multiple values

INSERT INTO ORDERS VALUES (49,32, '2012-10-01', 'High',49,10123.02,0.07,'Delivery Truck',457.81,208.16,68.02,'Barry French','Nunavut','Nunavut','Consumer','Office Supplies','Appliances','1.7 Cubic Foot Compact "Cube" Office Refrigerators','Jumbo Drum',0.58,'2010-12-02');

INSERT INTO ORDERS VALUES (50,293, '2012-10-01', 'High',27,244.57,0.01,'Regular Air',46.71,8.69,2.99,'Barry French','Nunavut','Nunavut','Consumer','Office Supplies','Binders and Binder Accessories','Cardinal Slant-D® Ring Binder, Heavy Gauge Vinyl','Small box',0.39,'2010-10-03');

INSERT INTO ORDERS VALUES (80,483, '2011-10-07', 'High',30,4695.7595,0.08,'Regular Air',1198.97,195.99,3.99,'clay rozendal','Nunavut','Nunavut','Corporate','Technology','Telephone and communication','R380','Small box',0.58,'2010-12-07');

Select * FROM ORDERS;

--To select particular column from table

SELECT Row_ID, Order_ID FROM ORDERS;

--To select particular value based on condition

Select * FROM ORDERS;

SELECT Order_Date,Order_Priority 
FROM ORDERS
WHERE Order_Quantity=6;

Select * FROM ORDERS;

SELECT Order_Date,Order_Priority 
FROM ORDERS
WHERE Order_Quantity>6;

--To use SQL-AND and OR Conjunctive Operators

SELECT Order_ID,Order_Quantity,Customer_Name
FROM ORDERS
WHERE Customer_Name= 'Barry French' AND Unit_Price=8.69000

SELECT Order_ID,Order_Quantity,Customer_Name
FROM ORDERS
WHERE Customer_Name= 'Barry French' OR Unit_Price=8.69000

Select * FROM ORDERS;

-- To use UPDATE Query

UPDATE ORDERS
SET Order_Quantity=100
WHERE Row_ID=50

Select * FROM ORDERS;

--To use DELETE Query

DELETE FROM ORDERS
WHERE Order_Quantity=30

--To use SQL LIKE clause "%" and "_" operator

SELECT * FROM ORDERS
WHERE Order_Quantity LIKE '10%';

SELECT * FROM ORDERS
WHERE Order_Quantity LIKE '10%';

SELECT * FROM ORDERS
WHERE Order_Quantity LIKE '_00';

--To use TOP Clause

SELECT TOP 2 * FROM ORDERS

--To use ORDER BY 

SELECT * FROM ORDERS
ORDER BY Customer_Name;


SELECT * FROM ORDERS
ORDER BY Customer_Name,Order_Quantity;

SELECT * FROM ORDERS
ORDER BY Order_Quantity DESC;


-- To use GROUP BY

SELECT Customer_Name, SUM(Shipping_cost) FROM ORDERS
GROUP BY Customer_Name;

-- To use DISTINCT keyword

SELECT DISTINCT Customer_Name FROM ORDERS
ORDER BY Customer_Name;

--To use SORTING Results

SELECT Customer_Name,Order_Quantity,Discount FROM ORDERS
WHERE Order_Quantity>6
ORDER BY Discount ASC;

-- To use Constraint

ALTER TABLE ORDERS ADD CONSTRAINT Row_ID_constraint PRIMARY KEY(Row_ID);

ALTER TABLE ORDERS DROP CONSTRAINT Row_ID_constraint;

ALTER TABLE ORDERS ADD CONSTRAINT Row_ID_constraint PRIMARY KEY(Row_ID);

SELECT * FROM ORDERS

ALTER TABLE ORDERS ADD CONSTRAINT Order_Quantity_constraint UNIQUE(Order_Quantity);

INSERT INTO ORDERS (Row_ID,Order_ID,Order_Date,Order_Priority,Order_Quantity,Sales,Discount,Ship_mode,Profit,Unit_Price,Shipping_cost,Customer_Name,Province,Region,Customer_Segment,
Product_Category,Product_Sub_Category,Product_Name,Product_container,Product_Base_Margin,Ship_Date)
VALUES (1,32, '2012-12-31', 'Low',6,261.54,0.04,'Regular Air',-213.25,38.94,35,'Muhammed MacIntyre','Nunavut','Nunavut','Small Business','Office Supplies','Storage & Organization','Eldon Base for stackable storage shelf, platinum','Large Box',0.8,'2010-12-20');


--To use JOINS

CREATE table RETURNS(
Order_ID INT NOT NULL,
Status Text
);


INSERT INTO RETURNS (Order_ID,Status) VALUES (65,'RETURNED')
Select * FROM RETURNS
INSERT INTO RETURNS (Order_ID,Status) VALUES (69,'RETURNED')
INSERT INTO RETURNS (Order_ID,Status) VALUES (134,'RETURNED')
INSERT INTO RETURNS (Order_ID,Status) VALUES (135,'RETURNED')

Select * FROM ORDERS
Select * FROM RETURNS

UPDATE ORDERS
SET Order_ID=65
WHERE Order_Quantity=6

UPDATE ORDERS
SET Order_ID=69
WHERE Order_Quantity=49

UPDATE ORDERS
SET Order_ID=134
WHERE Order_Quantity=100

UPDATE ORDERS
SET Order_ID=140
WHERE Order_Quantity=30

--To perform INNER JOIN

SELECT Order_Priority,Customer_Name, Shipping_cost
FROM ORDERS
INNER JOIN RETURNS
ON ORDERS.Order_ID=RETURNS.Order_ID;

--To perform LEFT JOIN

SELECT ORDERS.Order_Priority,ORDERS.Customer_Name, ORDERS.Shipping_cost,RETURNS.Status
FROM ORDERS
LEFT JOIN RETURNS
ON ORDERS.Order_ID=RETURNS.Order_ID;

Select * from RETURNS
Select * from ORDERS
Delete FROM RETURNS
WHERE Order_ID=135

--To perform RIGHT JOIN

SELECT ORDERS.Order_Priority,ORDERS.Customer_Name, ORDERS.Shipping_cost,RETURNS.Status
FROM ORDERS
RIGHT JOIN RETURNS
ON ORDERS.Order_ID=RETURNS.Order_ID;

--To perform FULL JOIN

SELECT ORDERS.Order_Priority,ORDERS.Customer_Name, ORDERS.Shipping_cost,RETURNS.Status
FROM ORDERS
FULL JOIN RETURNS
ON ORDERS.Order_ID=RETURNS.Order_ID;
























































