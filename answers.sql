-- Question 1

CREATE DATABASE online;

USE online;

-- Creating table
CREATE TABLE productdetails (
order_id INT NOT NULL,
customer_name VARCHAR(100) NOT NULL,
product VARCHAR(100) NOT NULL,
PRIMARY KEY (order_id, product) 
);

-- inserting data inside a table

INSERT INTO productdetails(order_id, customer_name, product)
VALUES 
(101, "John Doe", "Laptop"),
(101, "John Doe", "Mouse"),
(102, "Jane Smith", "Tablet"),
(102, "Jane Smith", "Keyboard"),
(102, "Jane Smith", "Mouse"),
(103, "Emily Clark", "Phone");

-- Question 2

-- Creating tables


CREATE TABLE Orders(
order_id INT PRIMARY KEY,
customer_Name VARCHAR(100)
);



CREATE TABLE OrderDetails (
order_id INT,
product VARCHAR(100),
Quantity INT,
PRIMARY KEY (order_id, product),
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- inserting data inside a table


INSERT INTO Orders(customer_Name)
VALUES
("John Doe"),
("Jane Smith"),
("Emily Clark");


INSERT INTO OrderDetails(order_id, product, Quantity)
VALUES
(101, "Laptop", 2),
(101, "Mouse", 1),
(102, "Tablet",  3),
(102, "Keyboard", 1),
(102, "Mouse", 2),
(103, "Phone",  1);
