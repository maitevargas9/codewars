/*
Description

Write a function which removes from string all non-digit characters and parse the remaining to number. 
E.g: "hell5o wor6ld" -> 56

Function GetNumberFromString(string s)
*/

using System;
using System.Linq;

namespace Solution
{
    public static class Program
    {
        public static int getNumberFromString(string s)
        {
            return int.Parse(string.Join("", s.Where(ch => char.IsDigit(ch))));
        }
    }
}
