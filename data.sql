-- Insert data into CUSTOMER
INSERT INTO CUSTOMER (name, email, phone, address)
VALUES 
('John Doe', 'johndoe@example.com', '555-1234', '123 Maple St.'),
('Jane Smith', 'janesmith@example.com', '555-5678', '456 Oak St.'),
('Alice Johnson', 'alicej@example.com', '555-8765', '789 Pine St.'),
('Bob Brown', 'bobbrown@example.com', '555-4321', '321 Cedar St.'),
('Charlie Wilson', 'charlie@example.com', '555-6789', '987 Birch St.'),
('Diana White', 'diana@example.com', '555-6543', '654 Elm St.'),
('Eva Green', 'eva@example.com', '555-9876', '246 Palm St.'),
('Frank Black', 'frank@example.com', '555-3456', '135 Fir St.'),
('Grace Blue', 'grace@example.com', '555-6547', '789 Aspen St.'),
('Henry Gold', 'henry@example.com', '555-5432', '951 Maple St.');

-- Insert data into INVOICE
INSERT INTO INVOICE (invoice_date, total_amount, status, customer_id)
VALUES
('2023-09-15', 150.75, 'PAID', 1),
('2023-09-16', 250.00, 'PENDING', 2),
('2023-09-17', 125.50, 'PAID', 3),
('2023-09-18', 500.00, 'PENDING', 4),
('2023-09-19', 89.99, 'CANCELLED', 5),
('2023-09-20', 300.50, 'PAID', 6),
('2023-09-21', 199.95, 'PAID', 7),
('2023-09-22', 75.49, 'PENDING', 8),
('2023-09-23', 120.00, 'PAID', 9),
('2023-09-24', 450.99, 'PENDING', 10);

-- Insert data into ITEM
INSERT INTO ITEM (description, unit_price, stock_quantity)
VALUES
('Laptop', 1200.00, 10),
('Smartphone', 800.00, 25),
('Keyboard', 25.00, 100),
('Mouse', 15.00, 200),
('Monitor', 200.00, 30),
('Printer', 150.00, 15),
('USB Cable', 5.00, 500),
('External Hard Drive', 100.00, 50),
('Desk Chair', 150.00, 20),
('Headphones', 75.00, 75);

-- Insert data into INVOICE_ITEM
INSERT INTO INVOICE_ITEM (quantity, price, invoice_id, item_id)
VALUES
(1, 1200.00, 1, 1),
(2, 25.00, 2, 3),
(1, 800.00, 3, 2),
(5, 5.00, 4, 7),
(1, 200.00, 5, 5),
(3, 15.00, 6, 4),
(2, 75.00, 7, 10),
(1, 150.00, 8, 9),
(1, 100.00, 9, 8),
(2, 150.00, 10, 9);

-- Insert data into PAYMENT_METHOD
INSERT INTO PAYMENT_METHOD (method_name)
VALUES
('Credit Card'),
('Bank Transfer'),
('Cash'),
('PayPal'),
('Mobile Payment'),
('Debit Card'),
('Cryptocurrency'),
('Check'),
('Gift Card'),
('Wire Transfer');

-- Insert data into PAYMENT
INSERT INTO PAYMENT (payment_date, amount, invoice_id, method_id)
VALUES
('2023-09-15', 150.75, 1, 1),
('2023-09-16', 250.00, 2, 2),
('2023-09-17', 125.50, 3, 3),
('2023-09-20', 300.50, 6, 4),
('2023-09-21', 199.95, 7, 5),
('2023-09-23', 120.00, 9, 6),
('2023-09-15', 150.75, 1, 7),
('2023-09-24', 450.99, 10, 8),
('2023-09-19', 89.99, 5, 9),
('2023-09-18', 500.00, 4, 10);

