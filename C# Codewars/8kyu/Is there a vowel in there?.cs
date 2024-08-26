/*
Description

Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).

If they are, change the array value to a string of that vowel.

Return the resulting array.
*/

using System;
using System.Linq;

public class Kata
{
    public static object[] IsVow(object[] a)
    {
        return a.Select(x => "aeiou".Contains(Convert.ToChar(x)) ? Convert.ToChar(x).ToString() : x).ToArray();
    }
}