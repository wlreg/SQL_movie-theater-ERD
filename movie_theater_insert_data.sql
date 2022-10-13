-- Inserting data into Movie Theater ERD tables

insert into customers_wl(
	customer_id,
	first_name,
	last_name,
	phone_number,
	billing_info,
	movie_club_member
)VALUES(
	101,
	'Atticus',
	'Rotterdam',
	'757-345-2234',
	'1454-8677-8999-4583 675 10/24',
	true
);

insert into film_distributors_wl(
	distributor_id,
	distributor_name,
	address,
	contact_number
)VALUES(
	10,
	'Buena Vista Distribution Company',
	'9811 Buena Vista Way, Burbank, CA, 90038',
	'312-445-1020'
);

insert into staff_wl(
	staff_id,
	first_name,
	last_name,
	job_title,
	wage,
	hire_date,
	employ_end_date
)VALUES(
	101,
	'Hugh',
	'Jackwoman',
	'Ticket Attendant',
	15.65,
	'08-22-2020',
	null
);


insert into films_wl(
	film_id,
	film_name,
	director_name,
	runtime_min,
	release_date,
	distributor_id
)VALUES(
	1000,
	'The Aristocats',
	'Wolfgang Reitherman',
	79,
	'12/24/1970',
	10
);

insert into concessions_wl(
	transaction_id,
	product_name,
	vendor_name,
	sales_price,
	date_sold,
	staff_id
)VALUES(
	1001,
	'Skittles',
	'Mars, Incorporated',
	4.99,
	'10/03/2022',
	101
);

insert into tickets_wl(
	ticket_id,
	ticket_price,
	film_id,
	customer_id,
	staff_id
)VALUES(
	101,
	12.99,
	1000,
	101,
	101
);
	