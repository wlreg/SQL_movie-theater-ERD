-- Creating tables for Movie Theater ERD

create table customers_wl(
	customer_id SERIAL primary key,
	first_name VARCHAR(75),
	last_name VARCHAR(75),
	phone_number VARCHAR(15),
	billing_info VARCHAR(150),
	movie_club_member BOOL
);


create table film_distributors_wl(
	distributor_id SERIAL primary key,
	distributor_name VARCHAR(200),
	address VARCHAR(150),
	contact_number VARCHAR(15)
);


create table staff_wl(
	staff_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	job_title VARCHAR(50),
	wage numeric(5,2),
	hire_date DATE,
	employ_end_date DATE
);


create table concessions_wl(
	transaction_id SERIAL primary key,
	product_name VARCHAR(125),
	vendor_name VARCHAR(100),
	sales_price numeric(5,2),
	date_sold DATE,
	staff_id INTEGER not null,
	foreign key(staff_id) references staff_wl(staff_id)
);


create table films_wl(
	film_id SERIAL primary key,
	film_name VARCHAR(150),
	director_name VARCHAR(200),
	runtime_min INTEGER,
	release_date DATE,
	distributor_id INTEGER not null,
	foreign key(distributor_id) references film_distributors_wl(distributor_id)
);


create table tickets_wl(
	ticket_id SERIAL primary key,
	ticket_price numeric(5,2),
	date_sold DATE default CURRENT_DATE,
	showing_time TIMESTAMP default CURRENT_TIMESTAMP,
	film_id INTEGER not null,
	customer_id INTEGER not null,
	staff_id INTEGER not null,
	foreign key(film_id) references films_wl(film_id),
	foreign key(customer_id) references customers_wl(customer_id),
	foreign key(staff_id) references staff_wl(staff_id)
);


