CREATE TABLE product (
product_name VARCHAR(200), 
price INTEGER 


);


INSERT INTO product (product_name, price)
VALUES ('Shoes', 600); 

SELECT * 
FROM product;

SELECT  product_name, price
FROM product


SELECT  product_name, price
FROM product
WHERE price > 80


UPDATE product
SET price = 40
WHERE product_name = 'Dress';


DELETE FROM product
WHERE product_name = 'Toy'

CREATE TABLE product (
	product_name VARCHAR(300),
	Price INTEGER,
	in_stock VARCHAR(3)
);

ALTER TABLE product
ADD COLUMN in_stock VARCHAR(3);

UPDATE PRODUCT
SET in_stock = 'Yes'
WHERE product_name = 'Jeans'
OR product_name = 'Running Shoes';


SELECT *
FROM product;

ALTER TABLE product
ALTER COLUMN in_stock TYPE INTEGER
USING in_stock::integer;

UPDATE PRODUCT
SET in_stock = '5'
WHERE product_name = 'Jeans'
OR product_name = 'Running Shoes';

UPDATE PRODUCT
SET in_stock = '5'
WHERE product_name = 'Jeans';

UPDATE PRODUCT
SET in_stock = '5'
WHERE product_name = 'Running Shoes';




