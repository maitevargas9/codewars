/*
Description

Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string (alphabetical ascending), 
the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

Examples:
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"
a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
*/

using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;

public class TwoToOne
{
    public static string Longest(string s1, string s2)
    {
        List<string> stringList = new List<string>();
        StringBuilder builder = new StringBuilder();
        var combineStrings = s1 + s2;
        string[] splitLetters = Regex.Split(combineStrings, "");

        foreach (var i in splitLetters)
        {
            if (!stringList.Contains(i))
            {
                stringList.Add(i);
                stringList.Sort();
            }
        }

        foreach (var x in stringList)
        {
            builder.Append(x);
        }
        var result = builder.ToString().Trim();

        return result;
    }
}