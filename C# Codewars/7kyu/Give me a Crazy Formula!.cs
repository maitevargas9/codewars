/*
Description

Given a non-negative number, sum all its digits using the following rules:
If the number of digits is even, remove the last digit
a. If the middle digit is odd, subtract it instead of adding
b. If both the middle digit and the last digit are even, subtract the last digit instead of adding
c. If the middle digit is even but the last digit is odd, the first digit must be squared
Repeat this process until only 1 digit is left.

Note: if at some point the number becomes negative, remove the minus sign.

Examples
5  =>  5
214  =>  2 - 1 + 4 = 5   =>  5
126  =>  1 + 2 - 6 = -3  =>  3
2234  =>  223  =>  2^2 + 2 + 3 = 9  =>  9
*/

using System;
using System.Linq;

namespace CrazyFormula {
  public class Crazy {
    public int CrazyFormula(long n) {
      while (n >= 10) {
        var s = Math.Abs(n).ToString();
        if (s.Length % 2 == 0) {
          s = s[..^1];
        }
        int len = s.Length, mid = len / 2;
        int midD = s[mid] - '0', lastD = s[^1] - '0', sum = 0;

        for (int i = 0; i < len; i++) {
          int d = s[i] - '0';
          if (i == mid && midD % 2 == 1) {
            sum -= d;
          }
          else if (i == len - 1 && midD % 2 == 0 && lastD % 2 == 0) {
            sum -= d;
          }
          else if (i == 0 && midD % 2 == 0 && lastD % 2 == 1) {
            sum += d * d;
          }
          else {
            sum += d;
          }
        }

        n = Math.Abs(sum);
      }
      return (int) n;
    }
  }
}