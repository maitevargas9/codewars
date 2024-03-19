/*
Description

Your task is to sum the differences between consecutive pairs in the array in descending order.

Example
[2, 1, 10]  -->  9
In descending order: [10, 2, 1]
Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9
If the array is empty or the array has only one element the result should be 0 (Nothing in Haskell, None in Rust).
*/

using System.Linq;

public static class Kata
{
    public static int SumOfDifferences(int[] arr)
    {
        return arr.Any() ? arr.Max() - arr.Min() : 0;
    }
}