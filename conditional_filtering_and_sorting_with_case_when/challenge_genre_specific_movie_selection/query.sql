-- Write your code here
SELECT *
FROM movies
WHERE
  CASE
    WHEN genre = 'Action' THEN rating >= 7
    WHEN genre = 'Comedy' THEN rating >= 6
    ELSE rating >= 8
  END;
