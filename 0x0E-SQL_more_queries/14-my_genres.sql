-- Use 'hbtn_0d_tvshows' to list all genres of show 'Dexter'
-- 'tv_shows' table contains only one record where title = Dexter
-- Each record should display tv_genres.name
-- Results must be sorted in ascending order by genre name
-- You can only use one SELECT statement
SELECT tv_genres.name
FROM tv_genres
INNER JOIN tv_show_genres m ON tv_genres.id = m.genre_id
INNER JOIN tv_shows s ON m.show_id = s.id
WHERE s.title = 'Dexter'
ORDER BY tv_genres.name ASC;
