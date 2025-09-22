create database librari_management;
use librari_management;
CREATE TABLE Course (
    course_id INT PRIMARY KEY ,
    course_name VARCHAR(100) NOT NULL,
    duration INT 
);


CREATE TABLE Students (
    student_id varchar(10) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    year INT,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


CREATE TABLE Staff (
    staff_id varchar(8) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    designation VARCHAR(50)
);


CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100),
    publisher VARCHAR(100),
    edition int
);


CREATE TABLE Book_Issue (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    student_id varchar(10) NULL,
    staff_id varchar(8) NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);