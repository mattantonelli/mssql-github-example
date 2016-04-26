
IF (object_id('ShowMovieReviews')) IS NOT NULL
  DROP PROCEDURE ShowMovieReviews
GO
CREATE PROCEDURE ShowMovieReviews
(
  @Genre varchar(12)
)
AS

SELECT m.Movie, g.Genre,
  LEFT(REPLICATE('* ',AVG(mr.Stars)),10) AS 'Stars',
  COUNT(*) AS 'Reviews'
FROM MovieReview mr
INNER JOIN Movie m ON m.MovieID = mr.MovieID
INNER JOIN Genre g ON g.GenreID = m.GenreID
INNER JOIN Employee e ON e.EmployeeID = mr.EmployeeID
WHERE Genre = @Genre
GROUP BY Movie, Genre
ORDER BY 3 DESC
GO

