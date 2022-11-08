-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
country.country, AVG(payment.amount)
from 
    country
    LEFT JOIN city on country.country_id = city.country_id
    LEFT JOIN address on address.city_id = city.city_id
    LEFT JOIN customer on address.address_id = customer.address_id
    inner JOIN payment on customer.customer_id = payment.customer_id
group by
    country.country
ORDER by AVG(payment.amount) DESC
LIMIT 10