CREATE TABLE customer (
	customer_id VARCHAR(255) not null PRIMARY KEY, 
	customer_name VARCHAR (255), 
	segment VARCHAR (255), 
	age INT, 
	country VARCHAR(50), 
	city VARCHAR(50), 
	states VARCHAR(50), 
	postal_code BIGINT, 
	region VARCHAR(50)
);

alter table customer add email VARCHAR(50);

select * FROM customer;

INSERT INTO customer VALUES('A1324', 'Rahmawati', 'A', '20', 'Indonesia', 'Bekasi', 'WNI', '17610',
							'Kalimalang', 'setyo@gmail.com');

select * FROM customer;

CREATE TABLE product(
	product_id VARCHAR(255) not null PRIMARY KEY, 
	category VARCHAR(255), 
	sub_category VARCHAR(255), 
	product_name VARCHAR (255)
);

INSERT INTO product VALUES('98098', 'Elektronik', 'Laptop', 'Asus Vivobook');

select * FROM product;

CREATE TABLE sales (
	order_line INT not null PRIMARY KEY,
	order_id VARCHAR(255),
	order_date DATE,
	ship_date DATE,
	ship_mode VARCHAR (255), 
	customer_id VARCHAR(255),
	product_id VARCHAR (255), 
	sales DOUBLE PRECISION, 
	quantity INT
);

INSERT INTO sales VALUES('01','68970','2022-10-31','2022-10-31', 'JNE','A1324','98098','20','1');

select * FROM sales;

alter table customer drop email;

select * FROM customer;