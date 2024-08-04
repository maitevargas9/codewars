/*
Description

Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. 
Index 0 will be considered even.

For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

The input will be a lowercase string with no spaces.

Good luck!
*/

using System;

public static class Kata
{
    public static string[] Capitalize(string s)
    {
        var r1 = "";
        var r2 = "";
        for (int i = 0; i < s.Length; i++)
        {
            r1 += i % 2 == 0 ? (char)(s[i] - 32) : s[i];
            r2 += i % 2 == 1 ? (char)(s[i] - 32) : s[i];
        }
        return new[] { r1, r2 };
    }
}