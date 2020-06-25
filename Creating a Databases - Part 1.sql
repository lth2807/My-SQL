CREATE TABLE Sales
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
PRIMARY KEY (purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;

CREATE TABLE Customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);

DROP TABLE customers;

CREATE TABLE Customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

ALTER TABLE customers
DROP INDEX email_address;

DROP TABLE customers;

CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john,mckinley@365careers.com',0);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

SELECT * FROM customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

CREATE TABLE companies
(
	company_id varchar(255),
    company_name varchar(255) DEFAULT 'X',
    headquarters_phone_number varchar(255),
UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;


CREATE TABLE Customers
(
	customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

CREATE TABLE Items
(
	item_code varchar(255),
    item varchar (255),
    unit_price NUMERIC(10,2),
    company_id varchar(255),
PRIMARY KEY (item_code)
);

CREATE TABLE companies
(
	company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number INT(12),
PRIMARY KEY (company_id)
);
