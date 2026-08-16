CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'Computer Science'),
(2, 'Information Systems'),
(3, 'Artificial Intelligence'),
(4, 'Cybersecurity');

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    gpa DECIMAL(3,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Students (student_id, student_name, gender, gpa, department_id)
VALUES
(101, 'Sara Ali', 'Female', 4.75, 1),
(102, 'Nora Ahmed', 'Female', 4.20, 1),
(103, 'Lama Hassan', 'Female', 4.60, 2),
(104, 'Reem Saad', 'Female', 4.10, 3),
(105, 'Maha Khalid', 'Female', 4.85, 4);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credit_hours INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Courses (course_id, course_name, credit_hours, department_id)
VALUES
(201, 'Database Systems', 3, 1),
(202, 'Artificial Intelligence', 3, 3),
(203, 'Cybersecurity Fundamentals', 3, 4),
(204, 'Data Structures', 3, 1),
(205, 'Systems Analysis', 3, 2);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Grades (grade_id, student_id, course_id, grade)
VALUES
(1, 101, 201, 95.00),
(2, 101, 204, 90.00),
(3, 102, 201, 82.00),
(4, 102, 204, 85.00),
(5, 103, 205, 92.00),
(6, 104, 202, 88.00),
(7, 105, 203, 96.00);

CREATE TABLE Training (
    training_id INT PRIMARY KEY,
    student_id INT,
    company_name VARCHAR(100),
    training_status VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

INSERT INTO Training (training_id, student_id, company_name, training_status)
VALUES
(301, 101, 'Data Office', 'Completed'),
(302, 102, 'University IT Center', 'In Progress'),
(303, 103, 'Tech Solutions', 'Completed'),
(304, 104, 'Cybersecurity Center', 'In Progress'),
(305, 105, 'Data Analytics Unit', 'Completed');
