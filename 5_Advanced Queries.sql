USE StudentCourseManagement;
SELECT s.student_id, s.first_name, s.last_name, s.email
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.course_id = 3;


-- Select courses with more than 5 students--
SELECT 
    c.course_id, 
    c.course_name, 
    COUNT(e.student_id) AS student_count
FROM 
    Enrollments e
JOIN 
    Courses c ON e.course_id = c.course_id
GROUP BY 
    c.course_id, c.course_name
HAVING 
    COUNT(e.student_id) > 5;


-- Update a student's email --
UPDATE 
    Students
SET 
    email = 'new.email@domaim.com'
WHERE 
    student_id = 1;


-- Delete a course that no students are enrolled in --
DELETE FROM 
    Courses
WHERE 
    course_id NOT IN (SELECT DISTINCT course_id FROM Enrollments);


-- Calculate the Average Age of Students--
SELECT 
    AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) AS average_age
FROM 
    Students;



-- Find the course with the maximum enrollments --
SELECT 
    c.course_id, 
    c.course_name, 
    COUNT(e.student_id) AS enrollment_count
FROM 
    Enrollments e
JOIN 
    Courses c ON e.course_id = c.course_id
GROUP BY 
    c.course_id, c.course_name
ORDER BY 
    enrollment_count DESC
LIMIT 1;


-- List courses along with the number of students enrolled (use GROUP BY). --

SELECT 
    c.course_id, 
    c.course_name, 
    COUNT(e.student_id) AS student_count
FROM 
    Enrollments e
JOIN 
    Courses c ON e.course_id = c.course_id
GROUP BY 
    c.course_id, c.course_name;
