USE MyDB
GO
CREATE TABLE Employee
(EmployeeID INT IDENTITY (1,1) PRIMARY KEY,
  FirstName VARCHAR(15),
  LastName VARCHAR(15),
  Salary INT,
  HireDate Datetime NOT NULL)
GO
