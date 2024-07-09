CREATE TABLE order_product (
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES order(order_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  PRIMARY KEY (order_id, product_id)
);

