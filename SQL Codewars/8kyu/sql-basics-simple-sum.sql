-- Description
-- For this challenge you need to create a simple SUM statement that will sum all the ages.
-- people table schema: id name age
-- select table schema: age_sum (sum of ages)
SELECT SUM(age) as age_sum FROM people;