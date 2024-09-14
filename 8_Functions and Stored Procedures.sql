DELIMITER //

CREATE PROCEDURE AddStudent(
    IN FirstName VARCHAR(50),
    IN LastName VARCHAR(50),
    IN Email VARCHAR(100),
    IN DateOfBirth DATE
)
BEGIN
    INSERT INTO Students (first_name, last_name, email, date_of_birth)
    VALUES (FirstName, LastName, Email, DateOfBirth);
END //

DELIMITER ;

CALL AddStudent('anas', 'dorgham', 'A.d@domain.com', '2000-01-01');




-- Create a function to calculate the age of a student based on their date of birth.


DELIMITER //

CREATE FUNCTION CalculateAge(date_of_birth DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SET age = FLOOR(DATEDIFF(CURDATE(), date_of_birth) / 365.25);
    RETURN age;
END //

DELIMITER ;

-- using it in a coulmn
SELECT 
    first_name, 
    last_name, 
    CalculateAge(date_of_birth) AS age
FROM 
    Students;



