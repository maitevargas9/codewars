/*
Description

Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), 
false otherwise.
*/

using System;
using System.Text;
using System.Text.RegularExpressions;

public static class Kata
{
    public static bool Digit(this string s)
    {
        return Regex.IsMatch(s, @"^\d\z");
    }
}