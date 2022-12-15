--Create a table as shown below.(Table Person)

CREATE TABLE Person (
  person_id INT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  address LONGTEXT NOT NULL,
  city VARCHAR(255) NOT NULL
);

--Inserting values to the Table Person
INSERT INTO Person VALUES (1, 'John', 'Thomas','186 Fleet street', 'London');
INSERT INTO Person VALUES (2, 'Mohammed', 'Rafi','52 Reu Des Fleurs','Paris');
INSERT INTO Person VALUES (3, 'Ann', 'George','10 Downing Street', 'London');
INSERT INTO Person VALUES (4, 'Jack', 'James' ,'Box no.5184', 'Dubai');
INSERT INTO Person VALUES (5, 'Sundar', 'Raj','087 Ring road', 'Bangalore');

SELECT * FROM Person;

--Create a table as shown below.(Table Order_table)

CREATE TABLE Order_table (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id)
        REFERENCES Person(person_id)
        ON DELETE CASCADE
);

--Inserting values to the Table Order_table

INSERT INTO Order_table VALUES (10, '2021-12-30', 1);
INSERT INTO Order_table VALUES (11, '2022-05-06', 2);
INSERT INTO Order_table VALUES (12, '2022-06-07', 2);
INSERT INTO Order_table VALUES (13, '2022-06-10', 5);
INSERT INTO Order_table VALUES (14, '2022-06-11', 5);

SELECT * FROM Order_table;

--Answer for a
a. SELECT first_name,last_name from Person where city='London';

--Answer for b
b. DELETE from Person where city='Dubai';

--Answer for c
c. update Person set address='10 Downing Street' where first_name='John';

