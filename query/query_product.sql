--Selects unique product prices and sorts them in descending order.
SELECT DISTINCT price
FROM product
ORDER BY price desc;


--The total number of products in each order.
SELECT product_id, count(quantity) AS total_quantity
FROM order_product
GROUP BY product_id


--The total number of orders for each customer.
SELECT customer_id, COUNT(order_id) AS total_orders
FROM order_by
GROUP BY customer_id;

--The total revenue for each product.
SELECT p.product_id, SUM(p.price * op.quantity) AS total_revenue
FROM product p
INNER JOIN order_product op ON p.product_id = op.product_id
GROUP BY p.product_id;

