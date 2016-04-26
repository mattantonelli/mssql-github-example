
IF (object_id('InsertMovieReview')) is NOT NULL
  DROP PROCEDURE InsertMovieReview
GO
CREATE PROCEDURE InsertMovieReview
(
  @EmployeeID int,
  @MovieID    int,
  @Stars      int
)
AS

-- local variable
declare @count int

-- determine if MovieReview record already exisTs
select @count = count(*)
  from MovieReview
 where EmployeeID = @EmployeeID
   and MovieID    = @MovieID
   
-- insert the record if it does not already exist
IF (@count = 0)
  insert into MovieReview values (@EmployeeID, @MovieID, @Stars)
ELSE
  print 'This movie review has already been submitted...'
go

