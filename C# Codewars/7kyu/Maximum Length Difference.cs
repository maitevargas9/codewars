/*
Description

You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any 
string in the first array and y be any string in the second array.

Find max(abs(length(x) − length(y)))

If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).

Example:
a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(a1, a2) --> 13

Bash note:
input : 2 strings with substrings separated by ,
output: number as a string
*/

using System;
using System.Linq;

public class MaxDiffLength 
{
  public static int Mxdiflg(string[] a1, string[] a2) 
  {
    if (a1.Length == 0 || a2.Length == 0)
    {
      return -1;
    }

    int max1 = a1.Max(s => s.Length);
    int min1 = a1.Min(s => s.Length);
    int max2 = a2.Max(s => s.Length);
    int min2 = a2.Min(s => s.Length);

    return Math.Max(Math.Abs(max1 - min2), Math.Abs(max2 - min1));
  }
}