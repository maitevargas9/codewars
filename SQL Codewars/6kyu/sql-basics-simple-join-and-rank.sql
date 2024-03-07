-- Description
-- For this challenge you need to create a simple SELECT statement that will return all columns from 
-- the people table, and join to the sales table so that you can return the COUNT of all sales and 
-- RANK each person by their sale_count.
-- people table schema id name
-- sales table schema id people_id sale price
-- You should return all people fields as well as the sale count as "sale_count" and the rank as "sale_rank".
-- NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
SELECT
    people.id,
    people.name,
    count(sales.id) AS sale_count,
    rank() OVER (
        ORDER BY
            count(sales.id)
    ) sale_rank
FROM
    people
    JOIN sales ON people.id = people_id
GROUP BY
    people.id;