/*
Description

Complete the square sum function so that it squares each number passed into it and then sums the results together.

For example, for [1, 2, 2] it should return 9 because 12 + 22 + 22 = 912 + 22 + 22 = 9.
*/

using System;
using System.Linq;

public static class Kata
{
    public static int SquareSum(int[] numbers)
    {
        return (int)numbers.Sum(i => Math.Pow(i, 2));
    }
}