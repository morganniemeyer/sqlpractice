-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT
city.city, SUM(payment.amount)
from 
    city
    LEFT JOIN address on address.city_id = city.city_id
    LEFT JOIN customer on address.address_id = customer.address_id
    inner JOIN payment on customer.customer_id = payment.customer_id
group by
    city.city
ORDER by SUM(payment.amount) DESC
LIMIT 10
