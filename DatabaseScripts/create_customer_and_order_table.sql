CREATE TABLE {$SchemaName$}.customer
(
	customer_id BIGINT NOT NULL,
	customer_name TEXT NOT NULL,
	email TEXT NOT NULL,
	phone_number TEXT,
	address_line_1 TEXT NOT NULL,
	city TEXT NOT NULL
);

ALTER TABLE test_schema.customer
ADD CONSTRAINT customer_pkey
PRIMARY KEY (customer_id);

CREATE TABLE {$SchemaName$}.order
(
	order_id BIGINT NOT NULL,
	customer_id BIGINT NOT NULL,
	order_date DATE NOT NULL,
	total_amount MONEY NOT NULL,
	order_status_id SMALLINT NOT NULL
);

ALTER TABLE test_schema.order
ADD CONSTRAINT order_pkey
PRIMARY KEY (order_id);


