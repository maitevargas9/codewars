/*
Description

Task
A cake is sliced with n straight lines. Your task is to calculate the maximum number of pieces the cake can have.

Example
For n = 0, the output should be 1.
For n = 1, the output should be 2.
For n = 2, the output should be 4.
For n = 3, the output should be 7.

Input/Output
[input] integer n
0 ≤ n ≤ 10000
[output] an integer
The maximum number of pieces the sliced cake can have.
*/

function cakeSlice(n) {
  return (n * (n + 1)) / 2 + 1;
}
