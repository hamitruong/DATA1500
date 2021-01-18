-- 3.1.	Display the first name and age for everyone that's in the table.
select first, age
From empinfo
-- 3.2.	Display the first name, last name, and city for everyone that's not from Payson.
Select first, last, city
From empinfo
Where city <>  'Payson'
-- 3.3. Display all columns for everyone that is over 40 years old.
Select *
from empinfo
Where age > 40
-- 3.4. Display the first and last names for everyone whose last name ends in an "ay".
Select first, last
From empinfo
Where last LIKE '%ay'
-- 3.5. Display all columns for everyone whose first name equals "Mary".
Select first
From empinfo
Where first = 'Mary'
-- 3.6. Display all columns for everyone whose first name contains "Mary".
Select first 
From empinfo
Where first LIKE '%Mary%'

/* 4.0 Create Table Exercise
You have just started a new company. It is time to hire some employees. 
You will need to create a table that will contain the following information about your new employees: firstname, lastname, title, age, and salary. 
After you create the table, you should receive a small form on the screen with the appropriate column names.
If you are missing any columns, you need to double check your SQL statement and recreate the table. */

create table Employee
(first text,
 last text,
 title text,
 age int,
 salary float,
 );

-- 5.0 It is time to insert data into your new employee table. Your first three employees are the following:

insert into Employee
(first, last, title, age, salary)
values ('Jonie', 'Weber', 'Secretary', 28, 19500.00),
('Potsy','Weber','Programmer', 32, 45300.00),
('Dirk','Smith', 'Programmer II', 45, 75020.00)

 -- 5.1. Select all columns for eveyone in your employee table.
 Select *
 From Employee

 -- 5.2. Select all columns for everyone with a salary over 30000.
 Select * 
 From Employee 
 Where salary > 30000 

-- 5.3. Select first and last names for everyone that's under 30 years old.
Select first, last
From Employee
Where age < 30

-- 5.4. Select first name, last name, and salary for anyone with "Programmer" in their title.
Select first, last, salary
From Employee
Where title = 'Programmer'

-- 5.5. Select all columns for everyone whose last name contains "ebe".
Select * 
From Employee 
Where last LIKE '%ebe%'

-- 5.6. Select the first name for everyone whose first name equals "Potsy".
Select first
From Employee
Where first = 'Potsy'

-- 5.7. Select all the columns for everyone over 80 years old.
Select *
From Employee
Where age > 80

-- 5.8. Select all columns for everyone whose last name ends in "ith".
Select * 
From employee
Where last LIKE '%ith'

/* Update statement exercises
After each update, issue a select statement to verify your changes. */

-- 6.1. Jonie Weber just got married to Bob Williams. She has requested that her last name be updated to Weber-Williams.
update Employee
set last = 'Weber-Williams'
Where first = 'Jonie' and last = 'Weber'

-- 6.2. Dirk Smith's birthday is today, add 1 to his age.
update Employee 
set age = age + 1
Where first = 'Dirk' and last = 'Smith'

-- 6.3. All secretaries are now called "Administrative Assistant". Update all titles accordingly.
update Employee
set title = 'Administrative Assistant'
Where title = 'Secretary'

-- 6.4. Everyone that's making under 30000 are to receive a 3500 a year raise.
update Employee 
set salary = salary + 3500
Where salary > 30000

-- 6.5. Everyone that's making over 33500 are to receive a 4500 a year raise.
update Employee
set salary = salary + 4500
Where salary > 33500

-- 6.6. All "Programmer II" titles are now promoted to "Programmer III".
update Employee
set title = 'Programmer III'
Where title = 'Programmer II'

-- 6.7. All "Programmer" titles are now promoted to "Programmer II".
update Employee
set title = 'Programmer II'
Where title = 'Programmer'

-- 7.0 Delete statement exercises 

-- 7.1. Jonie Weber-Williams just quit, remove her record from the table.
delete from Employee
where first = 'Jonie' and last = 'Weber-Williams'

-- 7.2. It's time for budget cuts. Remove all employees who are making over 70000 dollars.
delete from Employee
where salary > 70000

-- 8.0 Drop a table

-- 8.1. Drop your employee table.
drop table Employee