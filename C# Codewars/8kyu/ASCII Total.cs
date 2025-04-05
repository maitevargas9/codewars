/*
Description

You'll be given a string, and have to return the sum of all characters as an int. The function should be able to 
handle all printable ASCII characters.

Examples:
uniTotal("a") == 97
uniTotal("aaa") == 291
*/

using System;

public class Kata
{
    public static int UniTotal(string str)
    {
        int sum = 0;
        foreach (char c in str)
        {
            sum += Convert.ToInt32(c);
        }
        return sum;
    }
}