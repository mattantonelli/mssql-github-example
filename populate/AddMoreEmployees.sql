-- Listing 2: Code That Adds More Employees to the Employee Table

EXECUTE InsertEmployee 
  @FirstName = 'Axel',
  @LastName = 'Brodie',
  @Salary = 145000,
  @HireDate = '2008-02-10'

EXECUTE InsertEmployee 
  @FirstName = 'Pierre',
  @LastName = 'LaMontagne',
  @Salary = 145000,
  @HireDate = '2008-02-10'

