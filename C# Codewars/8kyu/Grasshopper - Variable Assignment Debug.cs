/*
Description

Variable assignment

Fix the variables assigments so that this code stores the string 'devLab' in the variable name.

using System;

public static class Kata 
{
    a == "dev";
    b == "Lab";
    name == a + b;
}
*/

using System;

public static class Kata
{
    public static string a = "dev";
    public static string b = "Lab";
    public static string name = $"{a}{b}";
}