/*
Description

Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.

Example:
"riley" --> "Hello Riley!"
"JACK"  --> "Hello Jack!"
*/

using System;

public static class Kata
{
    public static string Greet(string name)
    {
        if (string.IsNullOrEmpty(name))
        {
            return "Hello!";
        }
        string formattedName = char.ToUpper(name[0]) + name.Substring(1).ToLower();
        return "Hello " + formattedName + "!";
    }
}