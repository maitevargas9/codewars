/*
Description

History
This kata is a sequel of my Mixbonacci kata. Zozonacci is a special integer sequence named after ZozoFouchtra, 
who came up with this kata idea in the Mixbonacci discussion.
This sequence combines the rules for computing the n-th elements of fibonacci, jacobstal, pell, padovan, tribonacci 
and tetranacci sequences according to a given pattern.

Task
Compute the first n elements of the Zozonacci sequence for a given pattern p.

Rules
n is given as integer and p is given as a list of as abbreviations as strings (e.g. ["fib", "jac", "pad"])
When n is 0 or p is empty return an empty list.
The first four elements of the sequence are determined by the first abbreviation in the pattern (see the table below).
Compute the fifth element using the formula corespoding to the first element of the pattern, the sixth element using 
the formula for the second element and so on. (see the table below and the examples)
If n is more than the length of p repeat the pattern.
+------------+--------------+------------------------------------------+---------------------+
|  sequence  | abbreviation |         formula for n-th element         | first four elements |
+------------|--------------+------------------------------------------|---------------------|
| fibonacci  |     fib      | a[n] = a[n-1] + a[n-2]                   |     0, 0, 0, 1      |
| jacobsthal |     jac      | a[n] = a[n-1] + 2 * a[n-2]               |     0, 0, 0, 1      |
| padovan    |     pad      | a[n] = a[n-2] + a[n-3]                   |     0, 1, 0, 0      |
| pell       |     pel      | a[n] = 2 * a[n-1] + a[n-2]               |     0, 0, 0, 1      |
| tetranacci |     tet      | a[n] = a[n-1] + a[n-2] + a[n-3] + a[n-4] |     0, 0, 0, 1      |
| tribonacci |     tri      | a[n] = a[n-1] + a[n-2] + a[n-3]          |     0, 0, 0, 1      |
+------------+--------------+------------------------------------------+---------------------+

Example
zozonacci(["fib", "tri"], 7) == [0, 0, 0, 1, 1, 2, 3]

Explanation: 

          b     d
       /-----\/----\
[0, 0, 0, 1, 1, 2, 3]
 \--------/  
     | \--------/
     a     c

a - [0, 0, 0, 1] as "fib" is the first abbreviation
b - 5th element is 1 as the 1st element of the pattern is "fib": 1 = 0 + 1
c - 6th element is 2 as the 2nd element of the pattern is "tri": 2 = 0 + 1 + 1
d - 7th element is 3 as the 3rd element of the pattern is "fib" (see rule no. 5): 3 = 2 + 1

Sequences
fibonacci : 0, 1, 1, 2, 3 ...
padovan: 1, 0, 0, 1, 0 ...
jacobsthal: 0, 1, 1, 3, 5 ...
pell: 0, 1, 2, 5, 12 ...
tribonacci: 0, 0, 1, 1, 2 ...
tetranacci: 0, 0, 0, 1, 1 ...
*/

export function zozonacci(pattern: string[], length: number): number[] {
  if (length === 0 || pattern.length === 0) {
    return [];
  }

  const rules: Record<string, number[]> = {
    fib: [0, 0, 0, 1],
    jac: [0, 0, 0, 1],
    pel: [0, 0, 0, 1],
    tri: [0, 0, 0, 1],
    tet: [0, 0, 0, 1],
    pad: [0, 1, 0, 0]
  };

  const formulas: Record<string, (seq: number[], i: number) => number> = {
    fib: (seq, i) => seq[i - 1] + seq[i - 2],
    jac: (seq, i) => seq[i - 1] + 2 * seq[i - 2],
    pel: (seq, i) => 2 * seq[i - 1] + seq[i - 2],
    tri: (seq, i) => seq[i - 1] + seq[i - 2] + seq[i - 3],
    tet: (seq, i) => seq[i - 1] + seq[i - 2] + seq[i - 3] + seq[i - 4],
    pad: (seq, i) => seq[i - 2] + seq[i - 3]
  };

  const sequence = [...rules[pattern[0]]];

  for (let i = 4; i < length; i++) {
    const rule = pattern[(i - 4) % pattern.length];
    sequence.push(formulas[rule](sequence, i));
  }

  return sequence.slice(0, length);
}
