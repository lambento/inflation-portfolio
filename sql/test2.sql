SELECT product_name,
price,
in_stock,
supplier_id
FROM product


CREATE TABLE supplier (
	supplier_name VARCHAR(300)
);

INSERT INTO supplier (supplier_name)
VALUES ('Calvin Klevin');

INSERT INTO supplier (supplier_name)
VALUES ('Nike'); 

SELECT supplier_name,
supplier_id
FROM supplier;

ALTER TABLE product
ADD COLUMN supplier_id VARCHAR(40);

ALTER TABLE supplier
ADD COLUMN supplier_id INTEGER;

ALTER TABLE product
ALTER COLUMN supplier_id INTEGER;


UPDATE product
SET supplier_id = 1
WHERE product_name = 'Jeans';

UPDATE product
SET supplier_id = 30
WHERE product_name = 'Running Shoes'
OR product_name = 'Shoes';

UPDATE supplier
SET supplier_id = 30
WHERE supplier_name = 'Nike'; 

SELECT 
product_name,
price,
in_stock,
supplier_id
From product
RIGHT OUTER JOIN supplier
	ON supplier.supplier_id = 'supplier_id' 

