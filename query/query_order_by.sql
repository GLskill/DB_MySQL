--Selects orders for the last 30 days
SELECT order_id, customer_id, order_date
FROM order_by
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY) AND order_date <= CURDATE();


--The average cost of orders for each customer
SELECT customer_id, AVG(total_order_value) AS avg_order_value
FROM (
  SELECT o.order_id, o.customer_id, SUM(p.price * op.quantity) AS total_order_value
  FROM order_by o
  INNER JOIN order_product op ON o.order_id = op.order_id
  INNER JOIN product p ON op.product_id = p.product_id
  GROUP BY o.order_id, o.customer_id
) AS order_totals
GROUP BY customer_id;

