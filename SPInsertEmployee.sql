-- Listing 1: The InsertEmployee Stored Procedure

IF (object_id('InsertEmployee')) is NOT NULL
  DROP PROCEDURE InsertEmployee
GO

-- BEGIN CALLOUT A
CREATE PROCEDURE InsertEmployee
  (
    @FirstName varchar(15),
    @LastName varchar(15),
    @Salary int,
    @HireDate datetime
  )
-- END CALLOUT A
AS

-- Section 1: Define and initialize the local variable.
DECLARE @count int
SELECT @count = 0

-- Section 2: Determine whether the record already exists.
SELECT @count = COUNT(*)
  FROM Employee
  WHERE FirstName = @FirstName
  AND LastName  = @LastName

-- Section 3: Insert the record if it doesn't already exist.
IF (@count = 0)
  BEGIN
    INSERT INTO Employee VALUES
      (@FirstName, @LastName, @Salary, @HireDate)
    PRINT 'Employee record inserted'
  END
ELSE
  PRINT 'Employee record already exists...'

GO


