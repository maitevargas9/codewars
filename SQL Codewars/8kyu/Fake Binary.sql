-- Description
-- Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. 
-- Return the resulting string.
-- Note: input will never be an empty string
-- write your SQL statement here: you are given a table 'fakebin' with column 'x', 
-- return a table with column 'x' and your result in a column named 'res'.
SELECT
    x,
    translate(x, '0123456789', '0000011111') AS res
FROM
    fakebin;
