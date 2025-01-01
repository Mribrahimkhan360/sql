USE db_name;
CREATE DATABASE college;
USE college;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;



INSERT INTO student
(rollno, name)
VALUES
(101, 'Ibrahim'),
(102, 'Meraj'),
(103, 'Mijlish'),
(104, 'Yousuf');

INSERT INTO student VALUES (104, "Nilu");

SHOW TABLES;

CREATE DATABASE XYZ;
USE XYZ;
CREATE TABLE employee;

CREATE TABLE employee (
    employee_id INT,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
ALTER TABLE employee
DROP COLUMN employee_id;

DROP DATABASE employee;
USE employee;
DROP DATABASE XYZ;

CREATE DATABASE XYZ_COMPANY;
USE XYZ_COMPANY;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary int
);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"Mojlish Khan",25000),
(2,"Yousuf",30000),
(3,"Meraj",40000);

USE XYZ_COMPANY;
SELECT * FROM employee;

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp(id) VALUES (101);
SELECT * FROM emp;

CREATE TABLE temp2 (
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id,name)
);
CREATE DATABASE college;
USE college;
SHOW DATABASES;

USE college;

SHOW TABLES; 
DROP TABLE student;
SELECT * FROM student;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
SHOW TABLES; 
INSERT INTO student
(rollno, name, marks, grade, city) VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

USE college;
SELECT * FROM student WHERE marks> 80;

SELECT * FROM student WHERE city="Mumbai";

SELECT * FROM student WHERE marks+10>100;

SELECT * FROM student WHERE marks=93;

SELECT * FROM student WHERE marks>90;

SELECT * FROM student WHERE marks>90 AND city="Mumbai";

/*Upadate date 1/1/2025*/

SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS ecom;
USE mribrahimkhan;
SHOW TABLES;
SELECT * FROM store;
INSERT INTO store (id,name,age) VALUES((5,'sajid',20),(6,'Hassan',21));
INSERT INTO store (id,name,age) VALUES (8,'Kobita',20),(9,'Molla',21);
SELECT * FROM store;



CREATE DATABASE JonInc;
USE JonInc;
SHOW DATABASES;
CREATE TABLE financial_statement(id INT PRIMARY KEY,johan VARCHAR(30),rohan VARCHAR(30));

INSERT INTO financial_statement (id,johan,rohan) VALUES (1,'bank blance','inventory'),(2,'total assets','investment');
SELECT * FROM financial_statement;
CREATE DATABASE xyz_company;
use xyz_company;
CREATE TABLE user(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salery VARCHAR(20)
);
INSERT INTO user (id,name,salery) VALUES(1,"iBRAHIM",1000),(2,"Rana",2000);
SELECT * FROM user;

CREATE TABLE empolyee(
id INT UNIQUE
);
INSERT INTO empolyee VALUES(1001);
CREATE TABLE admin(
	id INT,
    fname VARCHAR(30),
    lname VARCHAR(30),
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY(id,email)
);
INSERT INTO admin(id,fname,l,lname,email,password)
VALUES(1,'Ibrahim','Khan','mribrahimkhan360@amil.com','12344'),
(2,'Ibrahim','Khan','mribrahimkhan3600@amil.com','12344');

SELECT * FROM admin;
INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');


INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');

CREATE TABLE certificate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    signature VARCHAR(50) DEFAULT 'Ibrahim Khan',
    score DECIMAL(5, 2), 
    date_time DATETIME
);
SELECT * FROM certificate;

INSERT INTO certificate(name,score,date_time) VALUES("Ibrahim Khan",50.0,"2024-12-27");
SELECT * FROM certificate;
DROP TABLE payment;

CREATE TABLE payment(
	id INT AUTO_INCREMENT,
	city VARCHAR(50),
	age INT,
	PRIMARY KEY(id),
    CONSTRAINT age_check CHECK(age>=18 AND city='Dhaka')
);




INSERT INTO payment(city,age)VALUES('Dhaka',18),('Dhaka',40);




INSERT INTO payment (city, age) 
VALUES 
('Dhaka', 18),('Dhaka',19);
SELECT * FROM payment;

CREATE TABLE student_result (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mark DECIMAL(5, 2) NOT NULL, 
    grade VARCHAR(2),
    chooldress VARCHAR(20) DEFAULT 'White and black',
    city VARCHAR(50)
);
INSERT INTO student_result (name, mark, grade, city) 
VALUES ('John Doe', 90.00, 'A', 'Dhaka');
INSERT INTO student_result (name, mark, grade, city) VALUES
('John Doe', 90.00, 'A', 'Dhaka'),
('Jane Smith', 85.50, 'B', 'Chittagong'),
('Ahmed Khan', 92.00, 'A', 'Sylhet'),
('Sara Ali', 88.50, 'B+', 'Dhaka'),
('Rashid Zaman', 76.00, 'C+', 'Rajshahi'),
('Fatima Begum', 78.00, 'C', 'Khulna'),
('Mohammad Rahman', 94.00, 'A+', 'Barisal'),
('Tariq Iqbal', 89.00, 'B', 'Mymensingh'),
('Nazia Khan', 80.50, 'B+', 'Dhaka'),
('Rifat Hasan', 72.00, 'C', 'Sylhet'),
('Mushfiqur Rahman', 95.00, 'A+', 'Chittagong'),
('Nabila Khan', 77.50, 'C+', 'Rajshahi'),
('Mahmudul Hasan', 81.00, 'B+', 'Khulna'),
('Ayesha Rahman', 82.00, 'B', 'Dhaka'),
('Riaz Ahmed', 90.50, 'A', 'Mymensingh'),
('Mina Begum', 73.00, 'C', 'Barisal'),
('Imran Ali', 88.00, 'B+', 'Dhaka'),
('Shahinur Islam', 79.00, 'C+', 'Chittagong'),
('Taslima Akter', 93.00, 'A', 'Sylhet'),
('Zakir Hossain', 84.00, 'B', 'Rajshahi'),
('Khadeeja Begum', 75.50, 'C+', 'Khulna'),
('Anwar Hossain', 87.00, 'B', 'Mymensingh'),
('Ariful Islam', 91.00, 'A', 'Barisal'),
('Mariam Jahan', 79.50, 'C+', 'Chittagong'),
('Hassan Shahid', 96.00, 'A+', 'Dhaka'),
('Nashit Raza', 83.00, 'B+', 'Rajshahi'),
('Rifat Shahin', 72.50, 'C', 'Sylhet'),
('Tania Begum', 86.00, 'B', 'Khulna'),
('Samiha Karim', 92.50, 'A', 'Mymensingh'),
('Aliya Binte', 77.00, 'C+', 'Barisal');

SELECT * FROM student_result WHERE mark=84.00;
SELECT * FROM student_result WHERE city="Dhaka" AND mark=84.00;
INSERT INTO student_result(name,mark,grade,city)VALUES('Ibrahim Khan','2.80','C','Dhaka');
SHOW DATABASES;







USE world; 
show tables;

SELECT * FROM country WHERE Continent = 'North America' AND LifeExpectancy BETWEEN 77 AND 78;

SHOW DATABASES;
USE world;
show tables;
select * from countrylanguage where IsOfficial="T" ;SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS ecom;
USE mribrahimkhan;
SHOW TABLES;
SELECT * FROM store;
INSERT INTO store (id,name,age) VALUES((5,'sajid',20),(6,'Hassan',21));
INSERT INTO store (id,name,age) VALUES (8,'Kobita',20),(9,'Molla',21);
SELECT * FROM store;



CREATE DATABASE JonInc;
USE JonInc;
SHOW DATABASES;
CREATE TABLE financial_statement(id INT PRIMARY KEY,johan VARCHAR(30),rohan VARCHAR(30));

INSERT INTO financial_statement (id,johan,rohan) VALUES (1,'bank blance','inventory'),(2,'total assets','investment');
SELECT * FROM financial_statement;
CREATE DATABASE xyz_company;
use xyz_company;
CREATE TABLE user(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salery VARCHAR(20)
);
INSERT INTO user (id,name,salery) VALUES(1,"iBRAHIM",1000),(2,"Rana",2000);
SELECT * FROM user;

CREATE TABLE empolyee(
id INT UNIQUE
);
INSERT INTO empolyee VALUES(1001);
CREATE TABLE admin(
	id INT,
    fname VARCHAR(30),
    lname VARCHAR(30),
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY(id,email)
);
INSERT INTO admin(id,fname,l,lname,email,password)
VALUES(1,'Ibrahim','Khan','mribrahimkhan360@amil.com','12344'),
(2,'Ibrahim','Khan','mribrahimkhan3600@amil.com','12344');

SELECT * FROM admin;
INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');


INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');

CREATE TABLE certificate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    signature VARCHAR(50) DEFAULT 'Ibrahim Khan',
    score DECIMAL(5, 2), 
    date_time DATETIME
);
SELECT * FROM certificate;

INSERT INTO certificate(name,score,date_time) VALUES("Ibrahim Khan",50.0,"2024-12-27");
SELECT * FROM certificate;
DROP TABLE payment;

CREATE TABLE payment(
	id INT AUTO_INCREMENT,
	city VARCHAR(50),
	age INT,
	PRIMARY KEY(id),
    CONSTRAINT age_check CHECK(age>=18 AND city='Dhaka')
);




INSERT INTO payment(city,age)VALUES('Dhaka',18),('Dhaka',40);




INSERT INTO payment (city, age) 
VALUES 
('Dhaka', 18),('Dhaka',19);
SELECT * FROM payment;

CREATE TABLE student_result (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mark DECIMAL(5, 2) NOT NULL, 
    grade VARCHAR(2),
    chooldress VARCHAR(20) DEFAULT 'White and black',
    city VARCHAR(50)
);
INSERT INTO student_result (name, mark, grade, city) 
VALUES ('John Doe', 90.00, 'A', 'Dhaka');
INSERT INTO student_result (name, mark, grade, city) VALUES
('John Doe', 90.00, 'A', 'Dhaka'),
('Jane Smith', 85.50, 'B', 'Chittagong'),
('Ahmed Khan', 92.00, 'A', 'Sylhet'),
('Sara Ali', 88.50, 'B+', 'Dhaka'),
('Rashid Zaman', 76.00, 'C+', 'Rajshahi'),
('Fatima Begum', 78.00, 'C', 'Khulna'),
('Mohammad Rahman', 94.00, 'A+', 'Barisal'),
('Tariq Iqbal', 89.00, 'B', 'Mymensingh'),
('Nazia Khan', 80.50, 'B+', 'Dhaka'),
('Rifat Hasan', 72.00, 'C', 'Sylhet'),
('Mushfiqur Rahman', 95.00, 'A+', 'Chittagong'),
('Nabila Khan', 77.50, 'C+', 'Rajshahi'),
('Mahmudul Hasan', 81.00, 'B+', 'Khulna'),
('Ayesha Rahman', 82.00, 'B', 'Dhaka'),
('Riaz Ahmed', 90.50, 'A', 'Mymensingh'),
('Mina Begum', 73.00, 'C', 'Barisal'),
('Imran Ali', 88.00, 'B+', 'Dhaka'),
('Shahinur Islam', 79.00, 'C+', 'Chittagong'),
('Taslima Akter', 93.00, 'A', 'Sylhet'),
('Zakir Hossain', 84.00, 'B', 'Rajshahi'),
('Khadeeja Begum', 75.50, 'C+', 'Khulna'),
('Anwar Hossain', 87.00, 'B', 'Mymensingh'),
('Ariful Islam', 91.00, 'A', 'Barisal'),
('Mariam Jahan', 79.50, 'C+', 'Chittagong'),
('Hassan Shahid', 96.00, 'A+', 'Dhaka'),
('Nashit Raza', 83.00, 'B+', 'Rajshahi'),
('Rifat Shahin', 72.50, 'C', 'Sylhet'),
('Tania Begum', 86.00, 'B', 'Khulna'),
('Samiha Karim', 92.50, 'A', 'Mymensingh'),
('Aliya Binte', 77.00, 'C+', 'Barisal');

SELECT * FROM student_result WHERE mark=84.00;
SELECT * FROM student_result WHERE city="Dhaka" AND mark=84.00;
INSERT INTO student_result(name,mark,grade,city)VALUES('Ibrahim Khan','2.80','C','Dhaka');
SHOW DATABASES;







USE world; 
show tables;

SELECT * FROM country WHERE Continent = 'North America' AND LifeExpectancy BETWEEN 77 AND 78;

SHOW DATABASES;
USE world;
show tables;
select * from countrylanguage where IsOfficial="T" ;SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS ecom;
USE mribrahimkhan;
SHOW TABLES;
SELECT * FROM store;
INSERT INTO store (id,name,age) VALUES((5,'sajid',20),(6,'Hassan',21));
INSERT INTO store (id,name,age) VALUES (8,'Kobita',20),(9,'Molla',21);
SELECT * FROM store;



CREATE DATABASE JonInc;
USE JonInc;
SHOW DATABASES;
CREATE TABLE financial_statement(id INT PRIMARY KEY,johan VARCHAR(30),rohan VARCHAR(30));

INSERT INTO financial_statement (id,johan,rohan) VALUES (1,'bank blance','inventory'),(2,'total assets','investment');
SELECT * FROM financial_statement;
CREATE DATABASE xyz_company;
use xyz_company;
CREATE TABLE user(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salery VARCHAR(20)
);
INSERT INTO user (id,name,salery) VALUES(1,"iBRAHIM",1000),(2,"Rana",2000);
SELECT * FROM user;

CREATE TABLE empolyee(
id INT UNIQUE
);
INSERT INTO empolyee VALUES(1001);
CREATE TABLE admin(
	id INT,
    fname VARCHAR(30),
    lname VARCHAR(30),
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY(id,email)
);
INSERT INTO admin(id,fname,l,lname,email,password)
VALUES(1,'Ibrahim','Khan','mribrahimkhan360@amil.com','12344'),
(2,'Ibrahim','Khan','mribrahimkhan3600@amil.com','12344');

SELECT * FROM admin;
INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');


INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');

CREATE TABLE certificate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    signature VARCHAR(50) DEFAULT 'Ibrahim Khan',
    score DECIMAL(5, 2), 
    date_time DATETIME
);
SELECT * FROM certificate;

INSERT INTO certificate(name,score,date_time) VALUES("Ibrahim Khan",50.0,"2024-12-27");
SELECT * FROM certificate;
DROP TABLE payment;

CREATE TABLE payment(
	id INT AUTO_INCREMENT,
	city VARCHAR(50),
	age INT,
	PRIMARY KEY(id),
    CONSTRAINT age_check CHECK(age>=18 AND city='Dhaka')
);




INSERT INTO payment(city,age)VALUES('Dhaka',18),('Dhaka',40);




INSERT INTO payment (city, age) 
VALUES 
('Dhaka', 18),('Dhaka',19);
SELECT * FROM payment;

CREATE TABLE student_result (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mark DECIMAL(5, 2) NOT NULL, 
    grade VARCHAR(2),
    chooldress VARCHAR(20) DEFAULT 'White and black',
    city VARCHAR(50)
);
INSERT INTO student_result (name, mark, grade, city) 
VALUES ('John Doe', 90.00, 'A', 'Dhaka');
INSERT INTO student_result (name, mark, grade, city) VALUES
('John Doe', 90.00, 'A', 'Dhaka'),
('Jane Smith', 85.50, 'B', 'Chittagong'),
('Ahmed Khan', 92.00, 'A', 'Sylhet'),
('Sara Ali', 88.50, 'B+', 'Dhaka'),
('Rashid Zaman', 76.00, 'C+', 'Rajshahi'),
('Fatima Begum', 78.00, 'C', 'Khulna'),
('Mohammad Rahman', 94.00, 'A+', 'Barisal'),
('Tariq Iqbal', 89.00, 'B', 'Mymensingh'),
('Nazia Khan', 80.50, 'B+', 'Dhaka'),
('Rifat Hasan', 72.00, 'C', 'Sylhet'),
('Mushfiqur Rahman', 95.00, 'A+', 'Chittagong'),
('Nabila Khan', 77.50, 'C+', 'Rajshahi'),
('Mahmudul Hasan', 81.00, 'B+', 'Khulna'),
('Ayesha Rahman', 82.00, 'B', 'Dhaka'),
('Riaz Ahmed', 90.50, 'A', 'Mymensingh'),
('Mina Begum', 73.00, 'C', 'Barisal'),
('Imran Ali', 88.00, 'B+', 'Dhaka'),
('Shahinur Islam', 79.00, 'C+', 'Chittagong'),
('Taslima Akter', 93.00, 'A', 'Sylhet'),
('Zakir Hossain', 84.00, 'B', 'Rajshahi'),
('Khadeeja Begum', 75.50, 'C+', 'Khulna'),
('Anwar Hossain', 87.00, 'B', 'Mymensingh'),
('Ariful Islam', 91.00, 'A', 'Barisal'),
('Mariam Jahan', 79.50, 'C+', 'Chittagong'),
('Hassan Shahid', 96.00, 'A+', 'Dhaka'),
('Nashit Raza', 83.00, 'B+', 'Rajshahi'),
('Rifat Shahin', 72.50, 'C', 'Sylhet'),
('Tania Begum', 86.00, 'B', 'Khulna'),
('Samiha Karim', 92.50, 'A', 'Mymensingh'),
('Aliya Binte', 77.00, 'C+', 'Barisal');

SELECT * FROM student_result WHERE mark=84.00;
SELECT * FROM student_result WHERE city="Dhaka" AND mark=84.00;
INSERT INTO student_result(name,mark,grade,city)VALUES('Ibrahim Khan','2.80','C','Dhaka');
SHOW DATABASES;







USE world; 
show tables;

SELECT * FROM country WHERE Continent = 'North America' AND LifeExpectancy BETWEEN 77 AND 78;

SHOW DATABASES;
USE world;
show tables;
select * from countrylanguage where IsOfficial="T" ;SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS ecom;
USE mribrahimkhan;
SHOW TABLES;
SELECT * FROM store;
INSERT INTO store (id,name,age) VALUES((5,'sajid',20),(6,'Hassan',21));
INSERT INTO store (id,name,age) VALUES (8,'Kobita',20),(9,'Molla',21);
SELECT * FROM store;



CREATE DATABASE JonInc;
USE JonInc;
SHOW DATABASES;
CREATE TABLE financial_statement(id INT PRIMARY KEY,johan VARCHAR(30),rohan VARCHAR(30));

INSERT INTO financial_statement (id,johan,rohan) VALUES (1,'bank blance','inventory'),(2,'total assets','investment');
SELECT * FROM financial_statement;
CREATE DATABASE xyz_company;
use xyz_company;
CREATE TABLE user(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salery VARCHAR(20)
);
INSERT INTO user (id,name,salery) VALUES(1,"iBRAHIM",1000),(2,"Rana",2000);
SELECT * FROM user;

CREATE TABLE empolyee(
id INT UNIQUE
);
INSERT INTO empolyee VALUES(1001);
CREATE TABLE admin(
	id INT,
    fname VARCHAR(30),
    lname VARCHAR(30),
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY(id,email)
);
INSERT INTO admin(id,fname,l,lname,email,password)
VALUES(1,'Ibrahim','Khan','mribrahimkhan360@amil.com','12344'),
(2,'Ibrahim','Khan','mribrahimkhan3600@amil.com','12344');

SELECT * FROM admin;
INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');


INSERT INTO admin (id, fname, lname, email, password) 
VALUES 
(1, 'Ibrahim', 'Khan', 'mribrahimkhan360@amil.com', '12344'),
(2, 'Ibrahim', 'Khan', 'mribrahimkhan3600@amil.com', '12344');

CREATE TABLE certificate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40),
    signature VARCHAR(50) DEFAULT 'Ibrahim Khan',
    score DECIMAL(5, 2), 
    date_time DATETIME
);
SELECT * FROM certificate;

INSERT INTO certificate(name,score,date_time) VALUES("Ibrahim Khan",50.0,"2024-12-27");
SELECT * FROM certificate;
DROP TABLE payment;

CREATE TABLE payment(
	id INT AUTO_INCREMENT,
	city VARCHAR(50),
	age INT,
	PRIMARY KEY(id),
    CONSTRAINT age_check CHECK(age>=18 AND city='Dhaka')
);




INSERT INTO payment(city,age)VALUES('Dhaka',18),('Dhaka',40);




INSERT INTO payment (city, age) 
VALUES 
('Dhaka', 18),('Dhaka',19);
SELECT * FROM payment;

CREATE TABLE student_result (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mark DECIMAL(5, 2) NOT NULL, 
    grade VARCHAR(2),
    chooldress VARCHAR(20) DEFAULT 'White and black',
    city VARCHAR(50)
);
INSERT INTO student_result (name, mark, grade, city) 
VALUES ('John Doe', 90.00, 'A', 'Dhaka');
INSERT INTO student_result (name, mark, grade, city) VALUES
('John Doe', 90.00, 'A', 'Dhaka'),
('Jane Smith', 85.50, 'B', 'Chittagong'),
('Ahmed Khan', 92.00, 'A', 'Sylhet'),
('Sara Ali', 88.50, 'B+', 'Dhaka'),
('Rashid Zaman', 76.00, 'C+', 'Rajshahi'),
('Fatima Begum', 78.00, 'C', 'Khulna'),
('Mohammad Rahman', 94.00, 'A+', 'Barisal'),
('Tariq Iqbal', 89.00, 'B', 'Mymensingh'),
('Nazia Khan', 80.50, 'B+', 'Dhaka'),
('Rifat Hasan', 72.00, 'C', 'Sylhet'),
('Mushfiqur Rahman', 95.00, 'A+', 'Chittagong'),
('Nabila Khan', 77.50, 'C+', 'Rajshahi'),
('Mahmudul Hasan', 81.00, 'B+', 'Khulna'),
('Ayesha Rahman', 82.00, 'B', 'Dhaka'),
('Riaz Ahmed', 90.50, 'A', 'Mymensingh'),
('Mina Begum', 73.00, 'C', 'Barisal'),
('Imran Ali', 88.00, 'B+', 'Dhaka'),
('Shahinur Islam', 79.00, 'C+', 'Chittagong'),
('Taslima Akter', 93.00, 'A', 'Sylhet'),
('Zakir Hossain', 84.00, 'B', 'Rajshahi'),
('Khadeeja Begum', 75.50, 'C+', 'Khulna'),
('Anwar Hossain', 87.00, 'B', 'Mymensingh'),
('Ariful Islam', 91.00, 'A', 'Barisal'),
('Mariam Jahan', 79.50, 'C+', 'Chittagong'),
('Hassan Shahid', 96.00, 'A+', 'Dhaka'),
('Nashit Raza', 83.00, 'B+', 'Rajshahi'),
('Rifat Shahin', 72.50, 'C', 'Sylhet'),
('Tania Begum', 86.00, 'B', 'Khulna'),
('Samiha Karim', 92.50, 'A', 'Mymensingh'),
('Aliya Binte', 77.00, 'C+', 'Barisal');

SELECT * FROM student_result WHERE mark=84.00;
SELECT * FROM student_result WHERE city="Dhaka" AND mark=84.00;
INSERT INTO student_result(name,mark,grade,city)VALUES('Ibrahim Khan','2.80','C','Dhaka');
SHOW DATABASES;







USE world; 
show tables;

SELECT * FROM country WHERE Continent = 'North America' AND LifeExpectancy BETWEEN 77 AND 78 ORDER BY LifeExpectancy ASC;

SHOW DATABASES;
USE world;
show tables;
select * from countrylanguage where IsOfficial="T" AND Language="Englsih";


SELECT * FROM country WHERE Continent = 'North America' AND LifeExpectancy BETWEEN 77 AND 78 ORDER BY LifeExpectancy DESC LIMIT 3;

-- agreement of MAX,MIN
SELECT MAX(population) FROM country;

SELECT SUM(population) FROM country;

SHOW TABLES;
 
SELECT code AS CountryCode, GNP, COUNT(GNP) FROM country GROUP BY code,GNP;



SELECT DISTINCT Code AS CountryCode, GNP, COUNT(GNP)
FROM country 
GROUP BY Code, GNP;

show databases;
use world;


SELECT * FROM country WHERE LifeExpectancy > 75 AND region LIKE 'A%' ORDER BY country ASC;

/*Name,Region,LifeExpectancy*/
SELECT *
FROM country
WHERE LifeExpectancy > 75
AND region LIKE 'S%';
SELECT *
FROM country
WHERE LifeExpectancy > 75
AND region LIKE 'S%'
ORDER BY Name ASC;
/*1 SELECT ALL country*/
SELECT *
FROM country;

/*2 LifeExpectancy > 75*/

SELECT *
FROM country
WHERE LifeExpectancy > 75;

/*LifeExpectancy,region*/
SELECT *
FROM country
WHERE LifeExpectancy > 75
AND region LIKE 'S%';

/*3. LifeExpectancy,region,ORDER BY*/

SELECT Name,Region,LifeExpectancy
FROM country
WHERE LifeExpectancy > 75
AND region LIKE 'S%'
ORDER BY Name ASC;
show tables;

SELECT * FROM countrylanguage WHERE IsOfficial="T" AND Language="English";

SELECT * FROM  student_result;
SELECT city, avg(mark)
FROM student_result group by city;





SELECT * FROM student_result WHERE grade='A' AND name='Johon Doe';
show tables;

SELECT city,avg(mark) FROM student_result GROUP BY city;
DESCRIBE student_result;

SELECT city,avg(mark) FROM student_result GROUP BY city
ORDER BY avg(mark) DESC;


CREATE TABLE payment_online(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(200),
    mode VARCHAR(200),
    city VARCHAR(200)
);
SELECT * FROM payment_online;

INSERT INTO payment_online(customer_id, customer, mode, city)
VALUES
(101,'Olivia Barrett', 'Netbanking', 'Portland'), 
(102,'Ethan Sinclair', 'Credit Card','Miami'),
(103,'Maya Hernandez','Credit Card','Seattle'),
(104,'Liam Donovan','Netbanking','Denver'),
(105,'Sophia Nguyen','Credit Card','New Orleans'),
(106,'Caleb Foster','Debit Card','Minneapolis'),
(107,'Ava Patle','Debit Card','Phoenix'),
(108,'Lucas Carter','Netbanking','Boston'),
(109,'Isabella Martinez','Netbanking','Nashville'),
(110,'Jackson Brookes','Credit Card','Boston');

SELECT mode,count(customer) FROM payment_online 
GROUP BY mode;

SELECT * FROM student_result;
SELECT name,mark,count(mark) FROM student_result GROUP BY city
HAVING MAX(mark)<90;

SELECT city, count(mark)
FROM student_result 
WHERE grade = "A"
GROUP BY city
HAVING MAX(mark)<90
ORDER BY city ASC;


