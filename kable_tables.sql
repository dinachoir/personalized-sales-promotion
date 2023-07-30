CREATE TABLE kalbe_customers (
	customer_id varchar PRIMARY KEY,
	age int,
	gender int,
	marital_status varchar(10),
	income int
);

COPY kalbe_customers
FROM 'D:\Projects\RA\VIX\kalbe\Case Study - Customer.csv'
DELIMITER ';'
CSV HEADER;

SELECT * FROM kalbe_customers
LIMIT 5;


CREATE TABLE kalbe_products (
	product_id varchar PRIMARY KEY,
	product_name varchar,
	price int
);

COPY kalbe_products
FROM 'D:\Projects\RA\VIX\kalbe\Case Study - Product.csv'
DELIMITER ';'
CSV HEADER;

SELECT * FROM kalbe_products
LIMIT 5;


CREATE TABLE kalbe_stores (
	store_id varchar PRIMARY KEY,
	store_name varchar,
	group_store varchar,
	type_store varchar,
	latitude int,
	longitude int
);

COPY kalbe_stores
FROM 'D:\Projects\RA\VIX\kalbe\Case Study - Store.csv'
DELIMITER ';'
CSV HEADER;

SELECT * FROM kalbe_stores
LIMIT 5;


CREATE TABLE kalbe_transactions (
	transaction_id varchar,
	customer_id varchar,
	transaction_date varchar,
	product_id varchar,
	price int,
	qty int,
	total_amount int,
	store_id varchar
);

COPY kalbe_transactions
FROM 'D:\Projects\RA\VIX\kalbe\Case Study - Transaction.csv'
DELIMITER ';'
CSV HEADER;

SELECT * FROM kalbe_transactions
LIMIT 5;