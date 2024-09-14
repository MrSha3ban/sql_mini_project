

-- Select students enrolled in more than one course. --

SELECT 
    Students.student_id, 
    Students.first_name, 
    Students.last_name, 
    COUNT(Enrollments.course_id) AS course_count
FROM 
    Students
JOIN 
    Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY 
    Students.student_id, Students.first_name, Students.last_name
HAVING 
    COUNT(Enrollments.course_id) > 1;
    


-- Find courses taught by a specific instructor. --

SELECT 
    Courses.course_id, 
    Courses.course_name
FROM 
    Courses
JOIN 
    InstructorCourses ON Courses.course_id = InstructorCourses.course_id
JOIN 
    Instructors ON InstructorCourses.instructor_id = Instructors.instructor_id
WHERE 
    Instructors.first_name = 'Ahmed' AND Instructors.last_name = 'azab';





-- Select the top 3 students with the most enrollments. --
SELECT 
    Students.student_id, 
    Students.first_name, 
    Students.last_name, 
    COUNT(Enrollments.course_id) AS enrollment_count
FROM 
    Students
JOIN 
    Enrollments ON Students.student_id = Enrollments.student_id
GROUP BY 
    Students.student_id, Students.first_name, Students.last_name
ORDER BY 
    enrollment_count DESC
LIMIT 3;


-- Use UNION to combine results of two different SELECT queries. --

SELECT 
    Students.student_id, 
    Students.first_name, 
    Students.last_name
FROM 
    Students
JOIN 
    Enrollments ON Students.student_id = Enrollments.student_id
WHERE 
    Enrollments.course_id = 1

UNION

SELECT 
    Students.student_id, 
    Students.first_name, 
    Students.last_name
FROM 
    Students
JOIN 
    Enrollments ON Students.student_id = Enrollments.student_id
WHERE 
    Enrollments.course_id = 2;

