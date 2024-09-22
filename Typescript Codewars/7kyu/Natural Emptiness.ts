/*
Description

Task

In abstract set theory, a construction due to von Neumann represents the natural numbers by sets, as follows:
0 = [ ] is the empty set
1 = 0 ∪ [ 0 ] = [ 0 ] = [ [ ] ]
2 = 1 ∪ [ 1 ] = [ 0, 1 ] = [ [ ], [ [ ] ] ]
n = n−1 ∪ [ n−1 ] = ...

Write a function that receives an integer n and produces the representing set.

Examples
rep_set(0) ➞ []
rep_set(1) ➞ [[]]
rep_set(2) ➞ [[], [[]]]
rep_set(3) ➞ [[], [[]], [[], [[ ]]]]

Input Constraints
0 <= n <= 15
Code limit is <= 200 characters for Python and <= 300 characters for TypeScript and JavaScript.
*/

type arr = arr[];
export function repSet(n: number): arr {
  return [...Array(n)].map((_, i) => repSet(i));
}
