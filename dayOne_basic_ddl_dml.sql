-- Active: 1704514465494@@127.0.0.1@3306

-- Create DATABASE
CREATE DATABASE mysql_demos
    DEFAULT CHARACTER SET = 'utf8mb4';

-- Show DATABASES
SHOW DATABASES;

-- USE DATABASE
USE mysql_demos; 

-- Check the which DATABASE is selected 
SELECT DATABASE(); 

-- Create TABLE
CREATE TABLE student_table(
    student_id INT,
    student_name VARCHAR(30),
    course_name VARCHAR(50)
);

-- show tables
show TABLES;

-- DESCRIBE TABLE
DESCRIBE student_table;

-- Drop database
DROP DATABASE mysql_demos;

-- show DATABASE
SHOW DATABASES;

-- DROP TABLE
drop TABLE student_table;

-- add column using alter command
ALTER TABLE student_table ADD email VARCHAR(150);

-- drop column using alter command
ALTER TABLE student_table DROP COLUMN email;
-- rename column using alter command
ALTER TABLE student_table RENAME COLUMN student_name TO names;
-- modify column using alter command
ALTER TABLE student_table MODIFY COLUMN course_name VARCHAR(100);


DESCRIBE student_table;

-- NOT NULL
create Table customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_address VARCHAR(200) NOT NULL,
    customer_city VARCHAR(50) NOT NULL,
    customer_state VARCHAR(50) NOT NULL
);

DESCRIBE customers;

-- UNIQUE

create table Products(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    product_price DECIMAL(10,2) NOT NULL,
    product_stock INT NOT NULL,
    product_seller VARCHAR(50) NOT NULL,
    product_category VARCHAR(50) NOT NULL,
    UNIQUE(product_name)
);

DESCRIBE products;

-- check

create table students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    student_email VARCHAR(100) NOT NULL,
    student_address VARCHAR(200) NOT NULL,
    student_city VARCHAR(50) NOT NULL,
    grade CHAR(1) NOT NULL CHECK (grade IN ('A','B','C','D','E'))
);

DESCRIBE students;

DESCRIBE student_table;

ALTER TABLE student_table ADD COLUMN student_email VARCHAR(100) NOT NULL;

DESCRIBE student_table;

ALTER TABLE student_table RENAME COLUMN names TO student_name;

describe student_table;

-- insert

insert into student_table(student_id, student_name, course_name, student_email)
VALUES(1, 'John Doe', 'Java', 'jan12@gmail.com');

insert into student_table(student_id, student_name, course_name, student_email)
VALUES(2, 'Jane Doe', 'Python', 'jan13@gmail.com'),
(3, 'John Smith', 'Java', 'jan14@gmail.com');

SELECT * FROM student_table;

-- update

update student_table
set student_name = 'Martin'
where student_id = 2;

set sql_safe_updates = 0;

-- DELETE

