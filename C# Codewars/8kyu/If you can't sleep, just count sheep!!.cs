/*
Description

If you can't sleep, just count sheeps!!

Task:
Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". 
Input will always be valid, i.e. no negative integers.
*/

using System;
using System.Text;

public static class Kata {
  public static string CountSheep(int n) {
    var result = new StringBuilder();
    for (int i = 1; i <= n; i++) {
      result.Append($"{i} sheep...");
    }
    return result.ToString();
  }
}