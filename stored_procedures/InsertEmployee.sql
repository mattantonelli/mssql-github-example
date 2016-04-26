
IF (object_id('InsertEmployee')) is NOT NULL
  DROP PROCEDURE InsertEmployee
GO

CREATE PROCEDURE InsertEmployee
(
  @FirstName varchar(15),
  @LastName  varchar(15),
  @Salary    int,
  @HireDate  datetime
)
as

-- Section 1:  define and initialize local variables
declare @count  int
select  @count  = 0

-- Section 2:  determine if employee record already exists
select @count = count(*) 
  from Employee 
 where Firstname = @FirstName 
   and LastName  = @LastName

-- Section 3:  insert the record if it does not already exist
IF (@count = 0)
BEGIN
  insert into Employee values (@FirstName, @LastName, @Salary, @HireDate)
  print  'Employee record inserted'
END
ELSE
  print 'Employee record already exists...'
GO

