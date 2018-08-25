DROP DATABASE IF EXISTS bamazon_storeDB;

CREATE DATABASE bamazon_storeDB;

USE bamazon_storeDB;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  item_id INTEGER NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INTEGER NULL,
  PRIMARY KEY (id)
);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (100, "Basketball", "Sports", 7.99, 50),
       (101, "Football", "Sports", 9.99, 50),
       (102, "Soccer", "Sports", 6.99, 50),
       (103, "Baseball", "Sports", 5.99, 50),
       (104, "Bicyle", "Sports", 99.99, 50),
       (105, "Spoons", "Home", 9.99, 50),
       (106, "Forks", "Home", 9.99, 50),
       (107, "Plates", "Home", 9.99, 50),
       (108, "Bowls", "Home", 9.99, 50),
       (109, "Cups", "Home", 9.99, 50);
