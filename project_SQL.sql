CREATE DATABASE SQL_basics;
USE SQL_basics;
CREATE TABLE product_table(
   product_ID varchar(100),
   product_name varchar(50),
   price int,
   stock int,
   category char(100)
);
CREATE TABLE customer_table(
   customer_ID varchar(100),
   customer_name varchar(50),
   customer_location varchar(100),
   customer_phone_no int
);
CREATE TABLE sales_table(
   Date date,
   order_no varchar(50),
   product_code varchar(50),
   product_name varchar(50),
   quantity int,
price int
);
INSERT INTO product_table(product_code,product_name,price,stock,category)
 values (0123,"chair",2000,5,"Furniture");
 INSERT INTO product_table(product_code,product_name,price,stock,category)
 values (0124,"Book",200,15,"Stationary");
 INSERT INTO product_table(product_code,product_name,price,stock,category)
 values (0124,"Hand bag",3000,6,"Accessories");
 INSERT INTO product_table(product_code,product_name,price,stock,category)
 values (0125,"Table",5000,10,"Furniture");
 
 INSERT INTO customer_table(customer_ID,customer_name,customer_location,customer_phone_no)
 values (1001,"John","Canada",61238974);
INSERT INTO customer_table(customer_ID,customer_name,customer_location,customer_phone_no)
 values (1002,"Stephen","USA",61292974);
INSERT INTO customer_table(customer_ID,customer_name,customer_location,customer_phone_no)
 values (1003,"Boltz","Finland",51238974);
INSERT INTO customer_table(customer_ID,customer_name,customer_location,customer_phone_no)
 values (1004,"Anna","Austria",92238974);
 
INSERT INTO sales_table(date,order_no,product_code,quantity,price)
 values ('2013-12-12',21345,"mar2123",1,2000);
 INSERT INTO sales_table(date,order_no,product_code,quantity,price)
 values ('2022-12-23',21365,"mar2152",2,10000);
 INSERT INTO sales_table(date,order_no,product_code,quantity,price)
 values ('2021-04-09',21325,"mar2343",1,5500);
 INSERT INTO sales_table(date,order_no,product_code,quantity,price)
 values ('2022-11-02',61345,"anr2123",4,50000);

ALTER TABLE sales_table
ADD S_no int,
ADD categories char(50);

ALTER TABLE product_table
CHANGE column stock stock varchar(100);

ALTER TABLE customer_table
RENAME customer_details;

ALTER TABLE sales_table
DROP S_no,
DROP categories;

SELECT * FROM sales_table
WHERE order_no IS NOT NULL;

SELECT * FROM product_table
WHERE category="Stationary";

SELECT DISTINCT category
FROM product_table;

SELECT * FROM sales_table
WHERE quantity > 2 AND price < 500;

SELECT * FROM customer_details
WHERE customer_name="%a";

SELECT * FROM product_table
ORDER BY price DESC;`sql_basics`

SELECT DISTINCT product_code,category FROM product_table
HAVING category >=2;

ALTER TABLE sales_table
ADD c_name char(100);

 INSERT INTO sales_table(c_name)
 values ("John");
 INSERT INTO sales_table(c_name)
 values ("stephen");
 INSERT INTO sales_table(c_name)
 values ("Boltz");
 INSERT INTO sales_table(c_name)
 values ("Anna");

SELECT customer_name,order_no FROM sales_table,customer_details



