/*
Description

Task

Consider two following representations of a non-negative integer:

A simple decimal integer, constructed of a non-empty sequence of digits from 0 to 9;

An integer with at least one digit in a base from 2 to 16 (inclusive), enclosed between # characters, and preceded by the base, 
which can only be a number between 2 and 16 in the first representation. For digits from 10 to 15 characters a, b, ..., f and A, 
B, ..., F are used.

Additionally, both representations may contain underscore (_) characters; they are used only as separators for improving 
legibility of numbers and can be ignored while processing a number.

Your task is to determine whether the given string is a valid integer representation.

Note: this is how integer numbers are represented in the programming language Ada.

Example
For line = "123_456_789", the output should be true;
For line = "16#123abc#", the output should be true;
For line = "10#123abc#", the output should be false;
For line = "10#10#123ABC#", the output should be false;
For line = "10#0#", the output should be true;
For line = "10##", the output should be false.

Input/Output
[input] string line
A non-empty string.
[output] a boolean value
true if line is a valid integer representation, false otherwise.
*/

function adaNumber(line) {
  return (
    /^[\d_]+$/.test(line) ||
    line
      .replace(/_/g, "")
      .replace(
        /^(\d+)#([\da-f]+)#$/i,
        (_, x, y) =>
          !!(
            x > 1 &&
            x < 17 &&
            RegExp("^[" + "0123456789abcdef".slice(0, +x) + "]+$", "i").test(y)
          )
      ) == "true"
  );
}
