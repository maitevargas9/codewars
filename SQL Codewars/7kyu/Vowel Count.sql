-- Description
-- Return the number (count) of vowels in the given string.
-- We will consider a, e, i, o, u as vowels for this Kata (but not y).
-- The input string will only consist of lower case letters and/or spaces.
-- write your SQL statement here: you are given a table 'getcount' with column 'str', 
-- return a table with column 'str' and your result in a column named 'res'.
SELECT
    str,
    LENGTH (REGEXP_REPLACE (str, '[^aeiou]', '', 'g')) AS res
FROM
    getcount;