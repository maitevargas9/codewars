/*
Description

Write a simple regex to validate a username. Allowed characters are:
lowercase letters,
numbers,
underscore
Length should be between 4 and 16 characters (both included).

using System;
using System.Text.RegularExpressions;
*/

using System;
using System.Text.RegularExpressions;

public class Kata
{
    public static bool ValidateUsr(string username)
    {
        return Regex.IsMatch(username, "^[a-z0-9_]{4,16}$");
    }
}