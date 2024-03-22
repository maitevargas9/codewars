/*
Description

Wilson primes satisfy the following condition. Let P represent a prime number.

Then, ((P-1)! + 1) / (P * P) should give a whole number.

Your task is to create a function that returns true if the given number is a Wilson prime.
*/

using System;

public class Kata
{
    public static bool AmIWilson(int p)
    {
        return (Factorial(p - 1) + 1.0) / (p * p) % 1 == 0 ? true : false;
    }
    private static int Factorial(int n)
    {
        if (n > 1)
        {
            return Factorial(n - 1) * n;
        }
        return 1;
    }
}