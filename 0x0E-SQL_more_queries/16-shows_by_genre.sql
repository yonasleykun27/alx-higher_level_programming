-- List all shows and genres linked to show from 'hbtn_0d_tvshows'
-- If show doesn't have a genre, display NULL in genre column
-- Each record should display tv_shows.title, tv_genres.name
-- Results must be sorted in ascending order by show title
-- You can only use one SELECT statement
SELECT s.title, g.name
FROM tv_shows s
LEFT JOIN tv_show_genres m ON s.id = m.show_id
LEFT JOIN tv_genres g ON m.genre_id = g.id
ORDER BY s.title ASC;
