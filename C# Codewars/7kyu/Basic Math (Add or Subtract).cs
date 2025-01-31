/*
Description

In this kata, you will do addition and subtraction on a given string. The return value must be also a string.

Note: the input will not be empty.

Examples
"1plus2plus3plus4"  --> "10"
"1plus2plus3minus4" -->  "2"
*/

using System;
using System.Data;
using System.Text.RegularExpressions;

public static class Kata
{
    public static string Calculate(string str)
    {
        str = Regex.Replace(str, "plus", "+", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, "minus", "-", RegexOptions.IgnoreCase);

        var table = new DataTable();
        var result = table.Compute(str, null);

        return result.ToString();
    }
}