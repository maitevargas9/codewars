-- Description
-- Your friend has been out shopping for puppies (what a time to be alive!)... He arrives back with multiple dogs, and you 
-- simply do not know how to respond!
-- By repairing the function provided, you will find out exactly how you should respond, depending on the number of dogs he has.
-- The number of dogs will always be a number and there will always be at least 1 dog.
-- Good luck!
-- write your SQL statement here: 
-- you are given a table 'dalmatians' with column 'n' (int)
-- return a query with column 'n' and your result in a column named 'res' (text)
-- sort results by column 'n' ascending
-- select n, switch case
--  when n <= 10 then do 'Hardly any' end
--  when n <= 50 then do 'More than a handful!' end
--  when n == 101 then do '101 DALMATIONS!!!' end
--  else do 'Woah that''s a lot of dogs!' end switch as res
-- from dalmatians
-- order by 1 asc;
SELECT
    n,
    CASE
        WHEN n <= 10 THEN 'Hardly any'
        WHEN n <= 50 THEN 'More than a handful!'
        WHEN n = 101 THEN '101 DALMATIANS!!!'
        ELSE 'Woah that''s a lot of dogs!'
    END AS res
FROM
    dalmatians
ORDER BY
    n ASC;