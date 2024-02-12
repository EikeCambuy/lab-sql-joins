USE sakila;

#1
SELECT name, COUNT(f.film_id)
FROM category c
INNER JOIN film_category f
ON c.category_id = f.category_id
GROUP BY name;

#2
SELECT s.store_id , co.country_id , c.city_id
FROM store s
INNER JOIN address a 
ON s.address_id = a.address_id
INNER JOIN city c 
ON c.city_id = a.city_id
INNER JOIN country co
ON co.country_id = c.country_id;

#3FAZER DEPOIS

#4
SELECT c.name , AVG(length) AS avg_time
FROM category c
INNER JOIN film_category fc
ON c.category_id = fc.category_id
INNER JOIN film f
ON fc.film_id= f.film_id
GROUP BY c.name;

#5
SELECT c.name, AVG(length) AS max_av
FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY C.name DESC;

#6
SELECT f.title, AVG(i.inventory_id)
FROM rental r
INNER JOIN inventory i
ON r.inventory_id = i.inventory_id
INNER JOIN film f
ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY f.title DESC
LIMIT 10;

#7








