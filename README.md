# sql_mini_project
DEPI SQL MINI Project
# Student Course Management Database

## Project Overview

This project involves creating a database for managing student courses. The database includes tables for students, courses, enrollments, and instructors. The project covers various SQL topics such as selection, filtering, aggregation, joins, and subqueries.

# Using Linux ubuntu

## first Installing MySQL Workbench and MySQL Server

To install MySQL Workbench and MySQL Server on your system, follow these steps:

1. **Install MySQL Workbench:**

    ```bash
    sudo apt install mysql-workbench-community
    ```

2. **Install MySQL Server:**

    ```bash
    sudo apt install mysql-server
    ```

3. **Access MySQL as the root user:**

    ```bash
    sudo mysql -u root
    ```

4. **Set up the root user with a native password:**

    ```sql
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
    ```

## Additional Information

- Ensure you replace `'password'` with a strong, secure password of your choice.
- After setting up, you can access MySQL Workbench to manage your databases and run SQL queries.




## Project Requirements

### 1. Database Setup

- Create a database named `StudentCourseManagement`.

### 2. Table Creation

Create the following tables with appropriate data types and constraints:

- **Students**
  - `student_id` (Primary Key, INT, AUTO_INCREMENT)
  - `first_name` (VARCHAR)
  - `last_name` (VARCHAR)
  - `email` (VARCHAR)
  - `date_of_birth` (DATE)

- **Courses**
  - `course_id` (Primary Key, INT, AUTO_INCREMENT)
  - `course_name` (VARCHAR)
  - `course_description` (TEXT)

- **Instructors**
  - `instructor_id` (Primary Key, INT, AUTO_INCREMENT)
  - `first_name` (VARCHAR)
  - `last_name` (VARCHAR)
  - `email` (VARCHAR)

- **Enrollments**
  - `enrollment_id` (Primary Key, INT, AUTO_INCREMENT)
  - `student_id` (Foreign Key, INT)
  - `course_id` (Foreign Key, INT)
  - `enrollment_date` (DATE)

### 3. Insert Sample Data

- Insert at least 10 students, 5 courses, 3 instructors, and 15 enrollments.

### 4. Basic Queries

- Select all students.
- Select all courses.
- Select all enrollments with student names and course names.

### 5. Advanced Queries

- Select students who enrolled in a specific course.
- Select courses with more than 5 students.
- Update a student's email.
- Delete a course that no students are enrolled in.
- Calculate the average age of students.
- Find the course with the maximum enrollments.
- List courses along with the number of students enrolled (use GROUP BY).

### 6. Join Queries

- Select all students with their enrolled courses (use JOIN).
- List all instructors and their courses.
- Find students who are not enrolled in any course.

### 7. Subqueries and Set Operations

- Select students enrolled in more than one course.
- Find courses taught by a specific instructor.
- Select the top 3 students with the most enrollments.
- Use UNION to combine results of two different SELECT queries.

### 8. Functions and Stored Procedures

- Create a stored procedure to add a new student.
- Create a function to calculate the age of a student based on their date of birth.

### 9. Aggregate Functions and Grouping

- Calculate the total number of students.
- Calculate the average, minimum, and maximum number of enrollments per course.

### 10. Additional Tasks

- Create aliases for complex column names.
- Use CASE to categorize students based on their age.
- Use EXISTS to find courses with at least one enrolled student.
- Create comments in SQL for clarity.

## How to Use

1. Clone the repository.
2. Import the SQL scripts in the following order:
    - `01_create_database.sql`
    - `02_create_tables.sql`
    - `03_insert_sample_data.sql`
    - `04_basic_queries.sql`
    - `05_advanced_queries.sql`
    - `06_join_queries.sql`
    - `07_subqueries_set_operations.sql`
    - `08_functions_stored_procedures.sql`
    - `09_aggregate_functions_grouping.sql`

3. Run the provided SQL queries to perform various operations.

## Contributing

Feel free to fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

