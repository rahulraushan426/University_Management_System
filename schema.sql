create database userappdb;

use userappdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rollno INT NOT NULL
);

CREATE TABLE students_fees (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    fees DOUBLE NOT NULL
);

INSERT INTO students_fees (email, fees) VALUES
('student1@example.com', 1000.00),
('student2@example.com', 1500.00),
('student3@example.com', 2000.00),
('student4@example.com', 2500.00),
('student5@example.com', 3000.00),
('student6@example.com', 3500.00),
('student7@example.com', 4000.00),
('student8@example.com', 4500.00),
('student9@example.com', 5000.00),
('student10@example.com', 5500.00);

-- Verify the data exists
SELECT * FROM students_fees WHERE email = 'student1@example.com';

-- If needed, reinsert the data
INSERT INTO students_fees (email, fees) VALUES ('student1@example.com', 1000.00)
ON DUPLICATE KEY UPDATE fees = 1000.00;
