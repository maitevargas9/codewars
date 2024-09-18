/*
Description

Write a function that removes every lone 9 that is inbetween 7s.

"79712312" --> "7712312"
"79797"    --> "777"
*/

using System;
using System.Text.RegularExpressions;

public class Kata
{
    public static string SevenAteNine(string str)
    {
        return Regex.Replace(str, @"(?<=7)9(?=7)", "");
    }
}