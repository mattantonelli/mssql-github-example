IF (object_id('InsertMovie')) is NOT NULL
  DROP PROCEDURE InsertMovie
GO
CREATE PROCEDURE InsertMovie
(
  @Movie   varchar(35),
  @GenreID int
)
AS

-- local variable
declare @count int

-- determine if movie record already exists
select @count = count(*) 
  from Movie
 where Movie = @Movie
   
-- insert the record if it does not already exist
IF (@count = 0)
  insert into Movie values (@GenreID, @Movie)
ELSE
  print 'Movie record already exists...'
GO

