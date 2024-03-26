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
