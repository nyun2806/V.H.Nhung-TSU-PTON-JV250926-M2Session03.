CREATE DATABASE university_management;
USE university_management;

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(255) NOT NULL
);


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);