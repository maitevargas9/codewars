/*
Description

Your job is to implement a function which returns the last D digits of an integer N as a list.

Special cases:
If D > (the number of digits of N), return all the digits.
If D <= 0, return an empty list.

Examples:
N = 1
D = 1
result = [1]
N = 1234
D = 2
result = [3, 4]
N = 637547
D = 6
result = [6, 3, 7, 5, 4, 7]
*/

using System;
using System.Linq;

public static class Kata {
  public static int[] LastDigit(long n, int d) {
    var digits = Math.Abs(n).ToString().Select(c => c - '0').ToArray();
    return d <= 0 ? new int[] { } :
           d >= digits.Length ? digits :digits.Skip(digits.Length - d).ToArray();
  }
}