-- Description
-- We have employees table with the the following columns:
-- employee_id: A unique integer identifier for each employee.
-- full_name: A string representing the employee's full name.
-- team: A string that specifies which team the employee is part of. The team can be one of the following 
-- four: "backend", "frontend", "devops", or "design".
-- birth_date: A date that represents the employee's birthdate.
-- Your task is to write an SQL query that retrieves the complete record for 3-rd oldest developer in the backend team. 
-- Let's assume for this task that there are no employees who share the same birthdate - tests are written to ensure that.
-- LIMIT/FETCH as well as usage of window functions is forbidden. Can you come up with something more witty?
-- Desired Output
-- The desired output should look like this:
-- employee_id	full_name	team	birth_date
-- 11	        Madlyn Lowe	backend	1969-08-15
SELECT
    *
FROM
    employees AS a
WHERE
    a.team = 'backend'
    AND (
        SELECT
            COUNT(DISTINCT birth_date)
        FROM
            employees AS b
        WHERE
            b.team = 'backend'
            and a.birth_date >= b.birth_date
    ) = 3;
