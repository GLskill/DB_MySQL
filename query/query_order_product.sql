--The request combines and returns orders with products.
SELECT *
FROM order_by ob
INNER JOIN order_product op ON op.order_id = op.order_id
INNER JOIN product p ON op.product_id = p.product_id;


--Returns orders with customers and products.
SELECT o.order_id, o.customer_id, c.first_name, c.last_name, o.order_date, o.status, p.product_id, p.name, p.price, op.quantity
FROM order_by o
INNER JOIN customer c ON o.customer_id = c.customer_id
INNER JOIN order_product op ON o.order_id = op.order_id
INNER JOIN product p ON op.product_id = p.product_id;