/*
Description

Basic regex tasks. Write a function that takes in a numeric code of any length. 
The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.

You can assume the input will always be a number.
*/

using System;
using System.Text.RegularExpressions;

public class Kata
{
    public static bool ValidateCode(string code)
    {
        return Regex.IsMatch(code, "^[1-3]");
    }
}