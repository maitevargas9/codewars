/*
Description

Given an array of numbers (in string format), you must return a string. The numbers correspond to the letters of the alphabet in 
reverse order: a=26, z=1 etc. You should also account for '!', '?' and ' ' that are represented by '27', '28' and '29' 
respectively.

All inputs will be valid.
*/

using System;
using System.Linq;

public class Kata
{
    public static string Switcher(string[] x)
    {
        return string.Concat(x.Select(n => "zyxwvutsrqponmlkjihgfedcba!? "[int.Parse(n) - 1]));
    }
}