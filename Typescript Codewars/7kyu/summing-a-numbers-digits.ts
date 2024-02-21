/*
Description

Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.

For example: (Input --> Output)
10 --> 1
99 --> 18
-32 --> 5
Let's assume that all numbers in the input will be integer values.
*/

export function sumDigits(n: number): number {
  return Math.abs(n).toString()
                    .split('')
                    .map(Number)
                    .reduce(function (a,b) { return a + Number(b); }, 0);
}