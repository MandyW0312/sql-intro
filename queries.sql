Create a database: createdb CompanyDatabase

Create a table called "Employees" : CREATE TABLE "Employees" ("FullName" TEXT, "Salary" INT, "JobPo
 sition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOL);


Create a few employees:
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
 "PhoneExtension", "IsPartTime") VALUES ('Lazy Larry', 600, 'Police Officer', 14
 71, False);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
  "PhoneExtension", "IsPartTime") VALUES ('Silly Susan', 700, 'Cook', 2182, True
 );
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
   "PhoneExtension", "IsPartTime") VALUES ('Crazy Carol', 700, 'Firefighter', 32
 13, False);
INSERT 0 1

 INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
    "PhoneExtension", "IsPartTime") VALUES ('Dingbat Dan', 500, 'Librarian', 432
 1, False);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
     "PhoneExtension", "IsPartTime") VALUES ('Funky Frank', 900, 'Doctor', 5432,
  False);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
      "PhoneExtension", "IsPartTime") VALUES ('Stinky Stan', 600, 'Writer', 6543
 , True);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
       "PhoneExtension", "IsPartTime") VALUES ('Goofy Gary', 300, 'Cook', 7654,
 True);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
        "PhoneExtension", "IsPartTime") VALUES ('Jolly Jill', 700, 'Waiter', 876
 5, True);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
         "PhoneExtension", "IsPartTime") VALUES ('Fancy Franny', 800, 'Pharmacis
 t', 9876, False);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
          "PhoneExtension", "IsPartTime") VALUES ('Nasty Nell', 400, 'Fitness In
 structor', 1987, True);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
           "PhoneExtension", "IsPartTime") VALUES ('Tiny Tim', 600, 'Grocery Man
 ager', 2598, False);
INSERT 0 1

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition",
            "PhoneExtension", "IsPartTime") VALUES ('Lovely Lisa', 400, 'Salespe
 rson', 3699, True);
INSERT 0 1


Select all columns for all employees: SELECT * FROM "Employees";
+--------------+----------+--------------------+------------------+-------------
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime  
|--------------+----------+--------------------+------------------+-------------
| Lazy Larry   | 600      | Police Officer     | 1471             | False       
| Silly Susan  | 700      | Cook               | 2182             | True        
| Crazy Carol  | 700      | Firefighter        | 3213             | False       
| Dingbat Dan  | 500      | Librarian          | 4321             | False       
| Funky Frank  | 900      | Doctor             | 5432             | False       
| Stinky Stan  | 600      | Writer             | 6543             | True        
| Goofy Gary   | 300      | Cook               | 7654             | True        
| Jolly Jill   | 700      | Waiter             | 8765             | True        
| Fancy Franny | 800      | Pharmacist         | 9876             | False       
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True        
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False       
| Lovely Lisa  | 400      | Salesperson        | 3699             | True        
+--------------+----------+--------------------+------------------+-------------
SELECT 12

Select only the full names and phone extensions for only full-time employees: 

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime"
  = False;
+--------------+------------------+
| FullName     | PhoneExtension   |
|--------------+------------------|
| Lazy Larry   | 1471             |
| Crazy Carol  | 3213             |
| Dingbat Dan  | 4321             |
| Funky Frank  | 5432             |
| Fancy Franny | 9876             |
| Tiny Tim     | 2598             |
+--------------+------------------+
SELECT 6

Insert a new Part-Time Employee, as a Software Developer,with a salary of 450:
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExten
 sion", "IsPartTime") VALUES ('Manic Mandy', 450, 'Software Developer', 4444, True);
INSERT 0 1

+--------------+----------+--------------------+------------------+--------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   |
|--------------+----------+--------------------+------------------+--------------|
| Lazy Larry   | 600      | Police Officer     | 1471             | False        |
| Silly Susan  | 700      | Cook               | 2182             | True         |
| Crazy Carol  | 700      | Firefighter        | 3213             | False        |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        |
| Funky Frank  | 900      | Doctor             | 5432             | False        |
| Stinky Stan  | 600      | Writer             | 6543             | True         |
| Goofy Gary   | 300      | Cook               | 7654             | True         |
| Jolly Jill   | 700      | Waiter             | 8765             | True         |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         |
| Manic Mandy  | 450      | Software Developer | 4444             | True         |
+--------------+----------+--------------------+------------------+--------------+

Update all the Cooks to have a salary of 500:
UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';
UPDATE 2

+--------------+----------+--------------------+------------------+--------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   |
|--------------+----------+--------------------+------------------+--------------|
| Lazy Larry   | 600      | Police Officer     | 1471             | False        |
| Crazy Carol  | 700      | Firefighter        | 3213             | False        |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        |
| Funky Frank  | 900      | Doctor             | 5432             | False        |
| Stinky Stan  | 600      | Writer             | 6543             | True         |
| Jolly Jill   | 700      | Waiter             | 8765             | True         |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         |
| Manic Mandy  | 450      | Software Developer | 4444             | True         |
| Silly Susan  | 500      | Cook               | 2182             | True         |
| Goofy Gary   | 500      | Cook               | 7654             | True         |
+--------------+----------+--------------------+------------------+--------------+

Delete all employees that have the full name of Lazy Larry:
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call! <- This cracks me up!
DELETE 1

+--------------+----------+--------------------+------------------+--------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   |
|--------------+----------+--------------------+------------------+--------------|
| Crazy Carol  | 700      | Firefighter        | 3213             | False        |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        |
| Funky Frank  | 900      | Doctor             | 5432             | False        |
| Stinky Stan  | 600      | Writer             | 6543             | True         |
| Jolly Jill   | 700      | Waiter             | 8765             | True         |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         |
| Manic Mandy  | 450      | Software Developer | 4444             | True         |
| Silly Susan  | 500      | Cook               | 2182             | True         |
| Goofy Gary   | 500      | Cook               | 7654             | True         |
+--------------+----------+--------------------+------------------+--------------+

Add a Column to the table "ParkingSpot" that can store up to 10 characters:

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE

+--------------+----------+--------------------+------------------+--------------+---------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   |
|--------------+----------+--------------------+------------------+--------------+---------------|
| Crazy Carol  | 700      | Firefighter        | 3213             | False        | <null>        |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        | <null>        |
| Funky Frank  | 900      | Doctor             | 5432             | False        | <null>        |
| Stinky Stan  | 600      | Writer             | 6543             | True         | <null>        |
| Jolly Jill   | 700      | Waiter             | 8765             | True         | <null>        |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        | <null>        |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         | <null>        |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        | <null>        |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         | <null>        |
| Manic Mandy  | 450      | Software Developer | 4444             | True         | <null>        |
| Silly Susan  | 500      | Cook               | 2182             | True         | <null>        |
| Goofy Gary   | 500      | Cook               | 7654             | True         | <null>        |
+--------------+----------+--------------------+------------------+--------------+---------------+

Updated the Employee information to reflect their parking spot number (for practice):

+--------------+----------+--------------------+------------------+--------------+---------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   |
|--------------+----------+--------------------+------------------+--------------+---------------|
| Manic Mandy  | 450      | Software Developer | 4444             | True         | 4             |
| Crazy Carol  | 700      | Firefighter        | 3213             | False        | 1             |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        | 2             |
| Funky Frank  | 900      | Doctor             | 5432             | False        | 3             |
| Jolly Jill   | 700      | Waiter             | 8765             | True         | 5             |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        | 6             |
| Goofy Gary   | 500      | Cook               | 7654             | True         | 76            |
| Stinky Stan  | 600      | Writer             | 6543             | True         | 8             |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        | 9             |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         | 10            |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         | 11            |
| Silly Susan  | 500      | Cook               | 2182             | True         | 12            |
+--------------+----------+--------------------+------------------+--------------+---------------+

ADVENTURE MODE:

Recreate your Database: createdb CompanyDatabaseTwo

Recreate your table: 

CREATE TABLE "EmployeesTwo" ("FullName" TEXT NOT NULL, "Salary" INT, "JobPo
 sition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOL, "ParkingSpot" VARCHAR(10), "Id" SERIAL PRIMARY KEY);


 WEEK 3 DAY 2:

 Add a table called Departments:

 CREATE TABLE "Departments" ("Id" SERIAL PRIMARY KEY, "DepartmentName" TEXT, "Buildin
 g" TEXT);
CREATE TABLE

+------+------------------+------------+
| Id   | DepartmentName   | Building   |
|------+------------------+------------|
+------+------------------+------------+

Add a Foreign Key "DepartmentId" to your "Employees" table:

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departmen
 ts" ("Id");
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE

+--------------+----------+--------------------+------------------+--------------+---------------+----------------+
| FullName     | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   |
|--------------+----------+--------------------+------------------+--------------+---------------+----------------|
| Manic Mandy  | 450      | Software Developer | 4444             | True         | 4             | <null>         |
| Crazy Carol  | 700      | Firefighter        | 3213             | False        | 1             | <null>         |
| Dingbat Dan  | 500      | Librarian          | 4321             | False        | 2             | <null>         |
| Funky Frank  | 900      | Doctor             | 5432             | False        | 3             | <null>         |
| Jolly Jill   | 700      | Waiter             | 8765             | True         | 5             | <null>         |
| Tiny Tim     | 600      | Grocery Manager    | 2598             | False        | 6             | <null>         |
| Goofy Gary   | 500      | Cook               | 7654             | True         | 76            | <null>         |
| Stinky Stan  | 600      | Writer             | 6543             | True         | 8             | <null>         |
| Fancy Franny | 800      | Pharmacist         | 9876             | False        | 9             | <null>         |
| Nasty Nell   | 400      | Fitness Instructor | 1987             | True         | 10            | <null>         |
| Lovely Lisa  | 400      | Salesperson        | 3699             | True         | 11            | <null>         |
| Silly Susan  | 500      | Cook               | 2182             | True         | 12            | <null>         |
+--------------+----------+--------------------+------------------+--------------+---------------+----------------+

Add Table called Products:

CREATE TABLE "Products" ("Id" SERIAL PRIMARY KEY, "Price" DECIMAL, "Name" TEXT, "Description" TEXT, "Q
 uantityInStock" INT);
CREATE TABLE

+------+---------+--------+---------------+-------------------+
| Id   | Price   | Name   | Description   | QuantityInStock   |
|------+---------+--------+---------------+-------------------|
+------+---------+--------+---------------+-------------------+

Add a Table called Orders:

CREATE TABLE "Orders" ("Id" SERIAL PRIMARY KEY, "OrderNumber" TEXT, "DatePlaced" DATE, "Email" TEXT);
CREATE TABLE

+------+---------------+--------------+---------+
| Id   | OrderNumber   | DatePlaced   | Email   |
|------+---------------+--------------+---------|
+------+---------------+--------------+---------+

Add a Table called ProductOrders:

CREATE TABLE "ProductOrders" ("Id" SERIAL PRIMARY KEY, "OrderId" INTEGER REFERENCES "Orders" ("Id"), "
 ProductId" INTEGER REFERENCES "Products" ("Id"), "OrderQuantity" INT);
CREATE TABLE

+------+-----------+-------------+-----------------+
| Id   | OrderId   | ProductId   | OrderQuantity   |
|------+-----------+-------------+-----------------|
+------+-----------+-------------+-----------------+


Insert the following into Departments:

INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Development', 'Main');
INSERT 0 1
INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Marketing', 'North');
INSERT 0 1

+------+------------------+------------+
| Id   | DepartmentName   | Building   |
|------+------------------+------------|
| 1    | Development      | Main       |
| 2    | Marketing        | North      |
+------+------------------+------------+

Insert the Following Employees: 

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Departm
 entId") VALUES ('Tim Smith', 40000, 'Programmer', 123, False, 1);
INSERT 0 1
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Departm
 entId") VALUES ('Barbara Ramsey', 80000, 'Manager', 234, False, 1);
INSERT 0 1
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "Departm
 entId") VALUES ('Tom Jones', 32000, 'Admin', 456, True, 2);
INSERT 0 1

+----------------+----------+--------------------+------------------+--------------+---------------+----------------+
| FullName       | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   |
|----------------+----------+--------------------+------------------+--------------+---------------+----------------|
| Manic Mandy    | 450      | Software Developer | 4444             | True         | 4             | <null>         |
| Crazy Carol    | 700      | Firefighter        | 3213             | False        | 1             | <null>         |
| Dingbat Dan    | 500      | Librarian          | 4321             | False        | 2             | <null>         |
| Funky Frank    | 900      | Doctor             | 5432             | False        | 3             | <null>         |
| Jolly Jill     | 700      | Waiter             | 8765             | True         | 5             | <null>         |
| Tiny Tim       | 600      | Grocery Manager    | 2598             | False        | 6             | <null>         |
| Goofy Gary     | 500      | Cook               | 7654             | True         | 76            | <null>         |
| Stinky Stan    | 600      | Writer             | 6543             | True         | 8             | <null>         |
| Fancy Franny   | 800      | Pharmacist         | 9876             | False        | 9             | <null>         |
| Nasty Nell     | 400      | Fitness Instructor | 1987             | True         | 10            | <null>         |
| Lovely Lisa    | 400      | Salesperson        | 3699             | True         | 11            | <null>         |
| Silly Susan    | 500      | Cook               | 2182             | True         | 12            | <null>         |
| Tim Smith      | 40000    | Programmer         | 123              | False        | <null>        | 1              |
| Barbara Ramsey | 80000    | Manager            | 234              | False        | <null>        | 1              |
| Tom Jones      | 32000    | Admin              | 456              | True         | <null>        | 2              |
+----------------+----------+--------------------+------------------+--------------+---------------+----------------+

Insert the following Products:

INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock") VALUES (12.45, 'Widget', 'T
 he Original Widget', 100);
INSERT 0 1
INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock") VALUES (99.99, 'Flowbee', '
 Perfect for haircuts', 3);
INSERT 0 1

+------+---------+---------+----------------------+-------------------+
| Id   | Price   | Name    | Description          | QuantityInStock   |
|------+---------+---------+----------------------+-------------------|
| 1    | 12.45   | Widget  | The Original Widget  | 100               |
| 2    | 99.99   | Flowbee | Perfect for haircuts | 3                 |
+------+---------+---------+----------------------+-------------------+

Insert the New Order:

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email") VALUES ('X529', '2020-01-01', 'person@exam
 ple.com');
INSERT 0 1

+------+---------------+--------------+--------------------+
| Id   | OrderNumber   | DatePlaced   | Email              |
|------+---------------+--------------+--------------------|
| 1    | X529          | 2020-01-01   | person@example.com |
+------+---------------+--------------+--------------------+

Add an Order Quantity of 3 for the Product Widget to the Order X529:

INSERT INTO "ProductOrders" ("OrderId", "ProductId", "OrderQuantity") VALUES (1, 1, 3);
INSERT 0 1

Add an Order Quantity of 2 for the Product Flowbee to the Order X529:

INSERT INTO "ProductOrders" ("OrderId", "ProductId", "OrderQuantity") VALUES (1, 2, 2);
INSERT 0 1

+------+-----------+-------------+-----------------+
| Id   | OrderId   | ProductId   | OrderQuantity   |
|------+-----------+-------------+-----------------|
| 1    | 1         | 1           | 3               |
| 2    | 1         | 2           | 2               |
+------+-----------+-------------+-----------------+

Given a building, return all employees that work in that building:

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE
 "Departments"."Building" = 'North Side';

+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'East Si
 de';

+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'Main';
 
+----------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName       | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|----------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
| Tim Smith      | 40000    | Programmer    | 123              | False        | <null>        | 1              | 1    | Development      | Main       |
| Barbara Ramsey | 80000    | Manager       | 234              | False        | <null>        | 1              | 1    | Development      | Main       |
+----------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

SELECT * FROM "Employees" JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id" WHERE "Departments"."Building" = 'North';
 
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------|
| Tom Jones  | 32000    | Admin         | 456              | True         | <null>        | 2              | 2    | Marketing        | North      |
+------------+----------+---------------+------------------+--------------+---------------+----------------+------+------------------+------------+

Find all the Orders that contain the Product Id of 2:

SELECT * FROM "Orders" JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."Id" WHERE "ProductOrders"."ProductId" = 2;

+------+---------------+--------------+--------------------+------+-----------+-------------+-----------------+
| Id   | OrderNumber   | DatePlaced   | Email              | Id   | OrderId   | ProductId   | OrderQuantity   |
|------+---------------+--------------+--------------------+------+-----------+-------------+-----------------|
| 1    | X529          | 2020-01-01   | person@example.com | 2    | 1         | 2           | 2               |
+------+---------------+--------------+--------------------+------+-----------+-------------+-----------------+



