-- Descrption
-- Yes it's Fibonacci yet again ! But this time it's SQL.
-- You need to create a select statement which will produce first 90 Fibonnacci numbers. The column name is - number
-- Fibbonaccii sequence is:
-- 0, 1, 1, 2, 3, 5, 8, 13, ..., 89, 144, 233, 377, ...
-- where
-- f(0) = 0
-- f(1) = 1
-- ...
-- f(n) = f(n-1) + f(n-2)

WITH RECURSIVE fib(n, number, next_number) AS (
  SELECT
    0,
    0::BIGINT,
    1::BIGINT
  UNION ALL
  SELECT
    n + 1,
    next_number,
    number + next_number
  FROM fib
  WHERE n < 89
)
SELECT number
FROM fib;