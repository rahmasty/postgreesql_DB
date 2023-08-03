CREATE TABLE customer(
	customer_id VARCHAR(255) not null PRIMARY KEY,
	customer_name VARCHAR(255),
	segment VARCHAR(255),
	age INT,
	country VARCHAR(50),
	city VARCHAR(50),
	states VARCHAR(50),
	postal_code BIGINT,
	region VARCHAR(50)
);
SELECT * FROM customer;
CREATE TABLE product(
	product_id VARCHAR(255) not null PRIMARY KEY,
	category VARCHAR(255),
	sub_category VARCHAR(255),
	product_name VARCHAR(255)
);
SELECT * FROM product;
CREATE TABLE sales(
	order_line INT not null PRIMARY KEY,
	order_id VARCHAR(255),
	order_date DATE,
	ship_date DATE,
	ship_mode VARCHAR(255),
	customer_id VARCHAR(255),
	product_id VARCHAR(255),
	sales DOUBLE PRECISION,
	quantity INT
);
SELECT * FROM sales;

INSERT INTO customer VALUES('A9875', 'Lilis', 'A', '17', 'Indonesia', 'Jakarta', 'WNI', '17879','Cengkareng');
INSERT INTO customer VALUES('A8678', 'Jihan', 'A', '21', 'Indonesia', 'Jakarta', 'WNI', '17908','Cengkareng');
INSERT INTO customer VALUES('A3456', 'Lia', 'A', '22', 'Indonesia', 'Bekasi', 'WNI', '17567','Tambun');
INSERT INTO customer VALUES('A2675', 'Rahmawati', 'A', '20', 'Indonesia', 'Jakarta', 'WNI', '19087','Pondok Kelapa');
INSERT INTO customer VALUES('A9054', 'Setyorini', 'A', '21', 'Indonesia', 'Jakarta', 'WNI', '17684','Duren Sawit');
SELECT * FROM customer;

INSERT INTO product VALUES('96578', 'Elektronik', 'Laptop', 'Lenovo Ideapad');
INSERT INTO product VALUES('97569', 'Elektronik', 'Hp', 'Iphone XR');
INSERT INTO product VALUES('56837', 'Elektronik', 'Laptop', 'MSI');
INSERT INTO product VALUES('98543', 'Elektronik', 'TV', 'Panasonic Smart TV');
INSERT INTO product VALUES('76124', 'Elektronik', 'Hp', 'Oppo A53');
SELECT * FROM product;

INSERT INTO sales VALUES('02','87689','2022-10-31','2022-10-31', 'JNE','A9875','96578','20','1');
INSERT INTO sales VALUES('04','56374','2022-10-29','2022-10-31', 'JNE','A8678','97569','20','1');
INSERT INTO sales VALUES('05','87536','2022-10-29','2022-10-31', 'JNE','A3456','56837','20','1');
INSERT INTO sales VALUES('06','92345','2022-10-30','2022-10-31', 'JNE','A2675','98543','20','1');
INSERT INTO sales VALUES('07','64758','2022-10-30','2022-10-31', 'JNE','A9054','76124','20','1');
SELECT * FROM sales;

--ROLLBACK
BEGIN;

UPDATE sales
SET quantity = quantity - 1
WHERE order_line = 2;

SELECT * FROM sales;

ROLLBACK;

--COMMIT
BEGIN;

UPDATE sales
SET quantity = quantity - 1
WHERE order_line = 2;

SELECT * FROM sales;

COMMIT;

--baruu

SELECT customer_id, customer_name, age, country, city FROM customer WHERE customer_name LIKE '%i';

SELECT * FROM customer LIMIT 5;

SELECT * FROM product ORDER BY product_name ASC;

SELECT * FROM sales ORDER BY order_date DESC;

SELECT customer.customer_id, customer.customer_name, customer.segment, sales.order_date, sales.ship_date, sales.ship_mode
FROM customer, sales
WHERE sales.ship_mode = 'JNE';

SELECT * FROM product JOIN sales ON product.product_id = sales.product_id;

SELECT a.customer_name, b.order_date, b.quantity, c.product_name
FROM customer a, sales b, product c
where a.customer_id = b.customer_id AND b.product_id = c.product_id;

SELECT customer.customer_name, sales.sales
FROM customer
LEFT OUTER JOIN sales ON customer.customer_id = sales.customer_id;

SELECT customer.customer_name, sales.sales
FROM customer
RIGHT OUTER JOIN sales ON customer.customer_id = sales.customer_id;

SELECT customer.customer_name, sales.sales
FROM customer
FULL OUTER JOIN sales ON customer.customer_id = sales.customer_id
ORDER BY customer.customer_name;
