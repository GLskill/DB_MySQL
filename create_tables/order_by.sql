CREATE TABLE order_by (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  status VARCHAR(50) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

