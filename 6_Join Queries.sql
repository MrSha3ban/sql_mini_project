use studentcoursemanagement ;
-- Select All Students with Their Enrolled Courses --
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    c.course_name
FROM 
    Students s
JOIN 
    Enrollments e ON s.student_id = e.student_id
JOIN 
    Courses c ON e.course_id = c.course_id;


-- List All Instructors and Their Courses --
SELECT 
    i.instructor_id, 
    i.first_name, 
    i.last_name, 
    c.course_name
FROM 
    Instructors i
JOIN 
    Courses c ON i.instructor_id = c.instructor_id;


-- Find Students Who Are Not Enrolled in Any Course --
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.student_id = e.student_id
WHERE 
    e.enrollment_id IS NULL;

