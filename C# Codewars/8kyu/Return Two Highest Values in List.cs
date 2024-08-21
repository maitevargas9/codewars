/*
Description

In this kata, your job is to return the two distinct highest values in a list. 
If there're less than 2 unique values, return as many of them, as possible.

The result should also be ordered from highest to lowest.

Examples:
[4, 10, 10, 9]  =>  [10, 9]
[1, 1, 1]  =>  [1]
[]  =>  []
*/

using System;
using System.Linq;

public static class Kata
{
    public static int[] TwoHighest(int[] arr)
    {
        return arr.Distinct().OrderByDescending(x => x).Take(2).ToArray();
    }
}