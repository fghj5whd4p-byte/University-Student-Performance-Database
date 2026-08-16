-- Student performance report
CREATE VIEW Student_Performance_Report AS
SELECT
    Students.student_name,
    Departments.department_name,
    Courses.course_name,
    Grades.grade
FROM Grades
JOIN Students
ON Grades.student_id = Students.student_id
JOIN Departments
ON Students.department_id = Departments.department_id
JOIN Courses
ON Grades.course_id = Courses.course_id;

SELECT * FROM Student_Performance_Report;

-- Training report
CREATE VIEW Training_Report AS
SELECT
    Students.student_name,
    Departments.department_name,
    Training.company_name,
    Training.training_status
FROM Training
JOIN Students
ON Training.student_id = Students.student_id
JOIN Departments
ON Students.department_id = Departments.department_id;

SELECT * FROM Training_Report;
