1. List all customers who live in Texas (use
JOINs)

select first_name, last_name, district
from customer
inner join address
on customer.address_id = address.address_id
where district = 'Texas';

--these 5 customers


2. Get all payments above $6.99 with the Customers Full
Name

select first_name, last_name, amount
from customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
where amount > 7;

--35 customers

3. Show all customers names who have made payments over $175(use
subqueries)


SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
where amount > 175;

--26 customers


4. List all customers that live in Nepal (use the city
table)

SELECT country, first_name, last_name
FROM customer
INNER JOIN address
on address.address_id = customer.address_id
INNER JOIN city
on address.city_id = city.city_id
INNER JOIN country
on city.country_id = country.country_id
where country = 'Nepal';

-- Kevin Schuler



5. Which staff member had the most
transactions?

select * from staff 
inner join payment
on payment.payment_id = payment.staff_id(
    select 
);



6. How many movies of each rating are
there?

select rating, title
from film
group by rating, title;

--1001


7.Show all customers who have made a single payment
above $6.99 (Use Subqueries)

select first_name, last_name, amount
from customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
where amount > 6.99;

--35

8. How many free rentals did our stores give away?



