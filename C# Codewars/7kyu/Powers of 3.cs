/*
Description

Given a positive integer N, return the largest integer k such that 3^k < N.

For example,
Kata.LargestPower(3) => 0
Kata.LargestPower(4) => 1
You may assume that the input to your function is always a positive integer.
*/

using System;

public class Kata
{
    public static int LargestPower(int n)
    {
        return (int)Math.Ceiling(Math.Log(n, 3)) - 1;
    }
}