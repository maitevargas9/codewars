/*
Description

Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

Examples (Input -> Output):
* "String"      -> "SSttrriinngg"
* "Hello World" -> "HHeelllloo  WWoorrlldd"
* "1234!_ "     -> "11223344!!__  "

Good Luck!
*/

using System;
using System.Linq;

public class Kata
{
    public static string DoubleChar(string s)
    {
        return string.Concat(s.Select(c => $"{c}{c}"));
    }
}