-- Students with their departments
SELECT
    Students.student_name,
    Students.gpa,
    Departments.department_name
FROM Students
JOIN Departments
ON Students.department_id = Departments.department_id;

-- Student grades with course names
SELECT
    Students.student_name,
    Courses.course_name,
    Grades.grade
FROM Grades
JOIN Students
ON Grades.student_id = Students.student_id
JOIN Courses
ON Grades.course_id = Courses.course_id;

-- Average grade for each student
SELECT
    Students.student_name,
    AVG(Grades.grade) AS average_grade
FROM Grades
JOIN Students
ON Grades.student_id = Students.student_id
GROUP BY Students.student_name;

-- Average grade for each course
SELECT
    Courses.course_name,
    AVG(Grades.grade) AS course_average
FROM Grades
JOIN Courses
ON Grades.course_id = Courses.course_id
GROUP BY Courses.course_name;

-- Overall grade statistics
SELECT
    MAX(grade) AS highest_grade,
    MIN(grade) AS lowest_grade,
    AVG(grade) AS overall_average
FROM Grades;

-- Students with GPA above the overall average
SELECT
    student_name,
    gpa
FROM Students
WHERE gpa > (
    SELECT AVG(gpa)
    FROM Students
);

-- Student with the highest GPA
SELECT
    student_name,
    gpa
FROM Students
WHERE gpa = (
    SELECT MAX(gpa)
    FROM Students
);
