/*
Description

Combine strings function
Create a function named (Combine_names) that accepts two parameters (first and last name). 
The function should return the full name.

Example
CombineNames("James", "Stevens")
returns "James Stevens"
*/

using System;

public static class Kata
{
    public static string CombineNames(string firstName, string lastName)
    {
        return $"{firstName} {lastName}";
    }
}