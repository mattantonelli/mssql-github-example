USE MyDB
-- Drop the old table if it exists.
IF OBJECT_ID('MovieReview') IS NOT NULL
  DROP TABLE MovieReview
GO
CREATE TABLE MovieReview
(
  MovieReviewID int IDENTITY (1,1) PRIMARY KEY,
  EmployeeID int NOT NULL,
  MovieID int NOT NULL,
  Stars tinyint NOT NULL
)
