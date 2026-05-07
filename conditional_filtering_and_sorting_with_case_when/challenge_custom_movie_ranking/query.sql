-- Write your code here
SELECT *
FROM movies
ORDER BY
CASE
    WHEN genre = 'Action' AND box_office >= 50000000 THEN 0
    ELSE 1
END,
    rating DESC