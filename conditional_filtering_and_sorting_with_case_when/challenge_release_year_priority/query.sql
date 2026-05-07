-- Write your code here
SELECT * from movies
order BY
CASE
  WHEN genre = 'Sci-fi' and release_year > 2010 THEN 0
  ELSE 1
END,
release_year desc