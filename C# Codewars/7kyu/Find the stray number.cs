/*
Description

You are given an odd-length array of integers, in which all of them are the same, except for one single number.

Complete the method which accepts such an array, and returns that single different number.

The input array will always be valid! (odd-length >= 3)

Examples
[1, 1, 2] ==> 2
[17, 17, 3, 17, 17, 17, 17] ==> 3
*/

using System;
using System.Linq;

class Solution
{
    public static int Stray(int[] numbers)
    {
        return numbers.First(number => numbers.Count(n => n == number) == 1);
    }
}