-- Create a table
CREATE TABLE Employees (
  Id INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Department VARCHAR(50),
  Salary DECIMAL(18, 2)
);

-- Insert data into the table
INSERT INTO
  Employees (Id, FirstName, LastName, Department, Salary)
VALUES
  (1, 'John', 'Doe', 'IT', 60000.00);

-- Update data in the table
UPDATE Employees
SET
  Salary = 65000.00
WHERE
  Id = 1;

-- Delete data from the table
delete from employees
where
  id = 1;

-- Select data from the table
select
  *
from
  (
    select
      *
    from
      xxxx
  ) as ejfj;

select
  sdf,
  aisdf, skdfj, wewe,
  ljkfw
from
  table_aiej
