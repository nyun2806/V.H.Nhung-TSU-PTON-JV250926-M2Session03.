CREATE DATABASE orders_management;
USE orders_management;

CREATE TABLE orders (
    order_id INT PRIMARY KEY auto_increment,
    order_date DATE NOT NULL,
    customer_name VARCHAR(255)
);
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
CREATE TABLE order_items (
    PRIMARY KEY (order_id, product_id),
    quantity INT NOT NULL,
	order_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);