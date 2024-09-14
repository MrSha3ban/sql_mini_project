-- Select all Students--

SELECT * FROM Students;

-- Select all courses--
SELECT * FROM Courses;

-- Select All Enrollments with Student Names and Course Names--
SELECT e.enrollment_id, s.first_name AS student_first_name, s.last_name AS student_last_name, 
       c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

