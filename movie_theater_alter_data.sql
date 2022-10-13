-- altering film distributors table to add a column for name of contact person at company 

alter table film_distributors_wl
add contact_name VARCHAR(150);

update film_distributors_wl 
set contact_name = 'Constance Velasquez'
where distributor_id = 10;

select * from film_distributors_wl


--- updating a hire date for an employee that was mistakenly put in wrong

update staff_wl
set hire_date = '08-10-2020'
where hire_date = '08-22-2020' and staff_id = 101;

select * from staff_wl
