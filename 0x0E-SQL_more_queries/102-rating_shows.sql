-- List all shows from 'hbtn_0d_tvshows_rate' by their rating
-- Each record should display tv_shows.title, rating sum
-- Results must be sorted in ascending order by the rating
-- You can use only one SELECT statement
SELECT tv_shows.title, SUM(tv_show_ratings.rate) AS rating
FROM tv_shows
INNER JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.show_id
GROUP BY tv_show_ratings.show_id
ORDER BY rating DESC;
