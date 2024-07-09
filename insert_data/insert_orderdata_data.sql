-- Creating a temporary table for storing orders and products
CREATE TEMPORARY TABLE temp_order_product AS
SELECT o.order_id, p.product_id, FLOOR(3 + (RAND() * 10)) AS quantity
FROM
  (SELECT order_id FROM `order_by` ORDER BY RAND() LIMIT 100) AS o
JOIN
  (SELECT product_id FROM `product` ORDER BY RAND() LIMIT 49) AS p; -- The number of products is up to 49

-- We determine the number of rows to select
SET @limit_rows = 5 + FLOOR(RAND() * 45);

-- Creating a query using a prepared query
SET @query = CONCAT('
INSERT INTO order_product (order_id, product_id, quantity)
SELECT order_id, product_id, quantity
FROM (
  SELECT order_id, product_id, quantity
  FROM temp_order_product
  ORDER BY RAND()
  LIMIT ', @limit_rows, '
) AS sub;');

-- Executing the request
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

--Deleting the temporary table
DROP TEMPORARY TABLE temp_order_product;