/*
Description

Complete the function which converts a binary number (given as a string) to a decimal number.
*/

using System;

namespace Solution
{
    public static class Program
    {
        public static int binToDec(string s)
        {
            return Convert.ToInt32(s, 2);
        }
    }
}