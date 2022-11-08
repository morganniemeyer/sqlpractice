-- the average film length by category
-- include the category name and avg length
SELECT
    category.name, AVG(film.length)
FROM
 category
 left join film_category on film_category.category_id = category.category_id
 left join film on film.film_id = film_category.film_id
group by
    category.name