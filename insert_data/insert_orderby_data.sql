--Generation of a random order_id
DELIMITER //

CREATE FUNCTION RandomOrderId() RETURNS INT DETERMINISTIC
BEGIN
    RETURN FLOOR(100000 + RAND() * 900000);
END //

DELIMITER ;

-- A function for generating random dates in the range
DELIMITER //

CREATE FUNCTION RandomDate(start DATE, end DATE) RETURNS DATE DETERMINISTIC
BEGIN
    DECLARE diff INT;
    DECLARE randDate DATE;
    SET diff = DATEDIFF(end, start);
    SET randDate = DATE_ADD(start, INTERVAL FLOOR(RAND() * diff) DAY);
    RETURN randDate;
END //

DELIMITER ;


-- Add orders for customers
INSERT INTO order_by (order_id, customer_id, order_date, status)
VALUES
(RandomOrderId(), 1, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 1, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 1, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 2, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 2, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 2, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 2, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 3, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 3, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 4, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 4, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 4, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 5, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 5, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 5, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 5, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 5, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 6, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 6, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 7, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 7, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 7, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 8, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 8, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 8, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 9, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 9, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 10, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 10, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 10, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 11, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 11, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 11, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 12, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 12, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 12, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 12, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 13, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 13, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 14, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 14, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 14, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 15, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 15, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 15, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 15, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 15, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 16, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 16, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 17, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 17, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 17, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 18, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 18, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 18, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 19, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 19, RandomDate('2024-06-01', '2024-06-30'), 'Shipped'),
(RandomOrderId(), 20, RandomDate('2024-06-01', '2024-06-30'), 'Received'),
(RandomOrderId(), 20, RandomDate('2024-06-01', '2024-06-30'), 'Prepared'),
(RandomOrderId(), 20, RandomDate('2024-06-01', '2024-06-30'), 'Shipped');