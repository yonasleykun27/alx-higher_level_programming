-- List all genres in 'hbtn_0d_tvshows_rate' by their rating
-- Each record should display tv_genres.name and rating sum
-- You can use only one SELECT statement
SELECT tv_genres.name, SUM(tv_show_ratings.rate) AS rating
FROM tv_genres
INNER JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
INNER JOIN tv_show_ratings ON tv_show_genres.show_id = tv_show_ratings.show_id
GROUP BY tv_show_genres.genre_id
ORDER BY rating DESC;
