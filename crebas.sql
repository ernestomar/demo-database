-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Create INVOICE table
CREATE TABLE INVOICE (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE SET NULL
);

-- Create ITEM table
CREATE TABLE ITEM (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Create INVOICE_ITEM table (junction table between INVOICE and ITEM)
CREATE TABLE INVOICE_ITEM (
    invoice_item_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    invoice_id INT,
    item_id INT,
    FOREIGN KEY (invoice_id) REFERENCES INVOICE(invoice_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES ITEM(item_id) ON DELETE RESTRICT
);

-- Create PAYMENT_METHOD table
CREATE TABLE PAYMENT_METHOD (
    method_id INT AUTO_INCREMENT PRIMARY KEY,
    method_name VARCHAR(50) NOT NULL
);

-- Create PAYMENT table
CREATE TABLE PAYMENT (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    invoice_id INT,
    method_id INT,
    FOREIGN KEY (invoice_id) REFERENCES INVOICE(invoice_id) ON DELETE CASCADE,
    FOREIGN KEY (method_id) REFERENCES PAYMENT_METHOD(method_id)
);
