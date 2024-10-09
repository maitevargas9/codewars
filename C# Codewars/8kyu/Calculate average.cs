/*
Description

Write a function which calculates the average of the numbers in a given list.

Note: Empty arrays should return 0.
*/

using System;
using System.Linq;

class AverageSolution
{
    public static double FindAverage(double[] array)
    {
        return array.Length == 0 ? 0 : array.Average();
    }
}