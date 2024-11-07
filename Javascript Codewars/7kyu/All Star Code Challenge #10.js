/*
Description

This Kata is intended as a small challenge for my students

Create a function named fibonacci() that takes a number argument, N, and gets the Nth number in a fibonacci sequence.

The fibonacci sequence is created by adding the previous 2 numbers together to form the next number in the sequence 
https://en.wikipedia.org/wiki/Fibonacci_number

1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

Note:
Assume the first 2 numbers in the fibonacci sequence are 1 and 1
An input of 0 should return 0

fibonacci(5); // => 5
fibonacci(6); // => 8
fibonacci(0); // => 0
*/

function fibonacci(n) {
  return n == 0 ? 0 : n == 1 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);
}
