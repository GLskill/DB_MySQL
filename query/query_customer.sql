--Calculates the number of orders for customers from selected countries
SELECT c.customer_id, c.first_name, c.last_name, c.email, COUNT(o.order_id) AS order_count
FROM customer c
LEFT JOIN order_by o ON c.customer_id = o.customer_id
WHERE c.country IN ('Germany', 'France', 'Poland', 'Austria')
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY c.country, c.last_name, c.first_name;


--Filter by the number of orders >2
SELECT c.customer_id, c.first_name, c.last_name, c.email, COUNT(o.order_id) AS order_count
FROM customer c
LEFT JOIN order_by o ON c.customer_id = o.customer_id
WHERE c.country IN ('Germany', 'France', 'Poland', 'Austria')
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
HAVING COUNT(o.order_id) > 2
ORDER BY c.country, c.last_name, c.first_name;
