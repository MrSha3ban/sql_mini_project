instructorcourses
-- Insert sample data into Students table
INSERT INTO Students (first_name, last_name, email, date_of_birth) VALUES
('Ahmed', 'Mohamed', 'A.M@domain.com', '2000-01-15'),
('sayed', 'gaber', 's.g@domain.com', '1999-02-20'),
('Ahmed', 'mohsen', 'a.m@domain.com', '2001-03-25'),
('salah', 'ahmed', 's.a@domain.com', '2000-04-30'),
('wesam', 'mohamed', 'w.m@domain.com', '1998-05-10'),
('zain', 'mohamed', 'z.m@domain.com', '1999-06-15'),
('hadeer', 'Ashraf', 'h.a@domain.com', '2001-07-20'),
('haneen', 'gaber', 'h.g@domain.com', '2000-08-25'),
('kerolos', 'nabil', 'k.n@domain.com', '1998-09-30'),
('omar', 'nader', 'O.M@domain.com', '1999-10-05');

-- Insert sample data into Courses table
INSERT INTO Courses (course_name, course_description) VALUES
('Microsoft Data Engineer', 'Create and manage data wearhouses and python,Sql languages and its applications.'),
('Machine Learning', 'Introduction to machine learning algorithms and techniques.'),
('Deep Learning', 'Advanced deep learning techniques and neural networks.'),
('Natural Language Processing', 'Techniques for processing and analyzing natural language data.'),
('Computer Vision', 'Methods for interpreting and understanding visual data.');

-- Insert sample data into Instructors table
INSERT INTO Instructors (first_name, last_name, email) VALUES
('Ahmed', 'azab', 'ahmedazab1235@yahoo.com'),
('mohamed', 'shaaban', 'mr.sha3ban@hotmail.com'),
('magdy', 'elsayed', 'elsayed@domain.com');

-- Insert sample data into Enrollments table
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-01-10'),
(2, 1, '2024-01-11'),
(3, 2, '2024-01-12'),
(4, 2, '2024-01-13'),
(5, 3, '2024-01-14'),
(6, 3, '2024-01-15'),
(7, 4, '2024-01-16'),
(8, 4, '2024-01-17'),
(9, 5, '2024-01-18'),
(10, 5, '2024-01-19'),
(1, 2, '2024-01-20'),
(2, 3, '2024-01-21'),
(3, 4, '2024-01-22'),
(4, 5, '2024-01-23'),
(5, 1, '2024-01-24');

-- Insert sample data into InstructorCourses table
INSERT INTO InstructorCourses (instructor_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(2, 5);
