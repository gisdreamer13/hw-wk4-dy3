--MULTI JOIN

SELECT * 
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id


SELECT * from film_actor

SELECT * 
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id

SELECT * from film

SELECT title, fa.film_id
from film_actor as fa
INNER JOIN film
ON fa.film_id = film.film_id

SELECT * from actor

SELECT first_name, last_name, title
FROM film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id

SELECT title, first_name, last_name
FROM film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id

SELECT title, first_name, last_name
FROM film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE title like "wo%"
order by first_name

-- sub queries

select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount) < -15000
order by sum(amount)

select first_name, last_name, email
from customer

select first_name, last_name, email
from customer
where customer_id in(
    select customer_id
    from payment
    group by customer_id
    having sum(amount) < -15000
    order by sum(amount)
)

--sub queries can occur in WHERE, FROM, and SELECT
--                              SELECT CLAUSE USE NOT REALLY A THING. . .


--from clasue 

select first_name, last_name
from(

    SELECT first_name, last_name, title
    FROM film_actor
    INNER JOIN actor
        on actor.actor_id = film_actor.actor_id
    INNER JOIN film
    ON film_actor.film_id = film.film_id
) as multi_join
where title = 'Alone Trip'


-- select clause


select first_name, last_name, (
    select count(rental_id)
    from rental
)
from customer