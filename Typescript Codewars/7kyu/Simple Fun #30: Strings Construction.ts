/*
Description

Task

How many strings equal to A can be constructed using letters from the string B? Each letter can be used only once and in one 
string only.

Example
For A = "abc" a
We can construct 2 strings A with letters from B.

Input/Output
[input] string A
String to construct, A contains only lowercase English letters.
Constraints: 3 ≤ A.length ≤ 9.
[input] string B
String containing needed letters, B contains only lowercase English letters.
Constraints: 3 ≤ B.length ≤ 50.
[output] an integer
*/

export function stringsConstruction(A: string, B: string): number {
  let a = [...A];
  let b = [...B];
  return Math.floor(
    Math.min(
      ...a.map(
        (c) => b.filter((x) => x == c).length / a.filter((x) => x == c).length
      )
    )
  );
}
