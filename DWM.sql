CREATE TABLE dim_dates (
date DATE NOT NULL,
	year BIGINT NOT NULL,
	month BIGINT NOT NULL,
	day BIGINT NOT NULL
);

CREATE TABLE dim_cars (
id VARCHAR PRIMARY KEY,
	model VARCHAR NOT NULL,
	cost_price BIGINT NOT NULL,
	rating BIGINT NOT NULL,
	price_per_hour BIGINT NOT NULL
);

CREATE TABLE dim_customers(
id VARCHAR PRIMARY KEY,
	name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	phone VARCHAR NOT NULL
);

CREATE TABLE ft_rentals(
id VARCHAR PRIMARY KEY,
	car_id VARCHAR REFERENCES dim_cars (id),
customer_id VARCHAR REFERENCES dim_customers (id),
	pick_up_date DATE  NOT NULL,
	cost_price INT NOT NULL,
	price_per_hour INT NOT NULL,
	total_rent_hours INT NOT NULL
);




