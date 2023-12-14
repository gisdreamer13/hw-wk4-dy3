1. List all customers who live in Texas (use
JOINs)

select * from address
where district = 'Texas'
-- 5 customers live in Texas


2. Get all payments above $6.99 with the Customers Full
Name

select customer_id, first_name, last_name
from customer
INNER JOIN payment
ON payment.payment_id = customer.customer_id
having sum(amount) > 6.99

3. Show all customers names who have made payments over $175(use
subqueries)


SELECT * 
FROM payment
INNER JOIN customer
on payment.payment_id = customer.customer_id
having sum(amount) > 175



4. List all customers that live in Nepal (use the city
table)

select * from address
where district = 'Nepal'

5. Which staff member had the most
transactions?

select * from staff 
inner join payment
on payment.payment_id = payment.staff_id(
    select 
)



6. How many movies of each rating are
there?

select rating from film
group by rating, title

select * from film
group by film.film_id.rating


7.Show all customers who have made a single payment
above $6.99 (Use Subqueries)



8. How many free rentals did our stores give away?



