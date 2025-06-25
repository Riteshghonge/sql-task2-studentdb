-- Create the database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Create a Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    course VARCHAR(50) DEFAULT 'Undeclared',
    enrollment_date DATE
);

-- Create a Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(100)
);

-- Insert full data into Students
INSERT INTO Students (name, email, course, enrollment_date)
VALUES ('Ritesh  Ghonge', 'ritesh@gmail.com', 'Computer Science', '2025-06-01');

-- Insert with NULL email
INSERT INTO Students (name, email, course, enrollment_date)
VALUES ('Sneha Verma', NULL, 'Electrical', '2025-06-05');

-- Insert using DEFAULT 
INSERT INTO Students (name, email, enrollment_date)
VALUES ('Aditya Joshi', 'aditya@gmail.com', '2025-06-08');

-- Insert into Courses
INSERT INTO Courses (course_name, department)
VALUES ('Data Structures', 'Computer Science'),
       ('Circuit Analysis', 'Electrical Engineering');
       
select * from students;
select * from Courses;

-- Update email for student with NULL email
UPDATE Students
SET email = 'sneha@gmail.com'
WHERE name = 'Sneha Verma';

-- Update multiple rows where course is 'Undeclared'
UPDATE Students
SET course = 'Mechanical'
WHERE course = 'Undeclared';

SET sql_safe_updates=0;

-- Delete a student by ID
DELETE FROM Students
WHERE student_id = 3;


