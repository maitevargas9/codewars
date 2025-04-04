/*
Description

SpeedCode #2 - Array Madness

Objective
Given two integer arrays a, b, both of length >= 1, create a program that returns true if the sum of the squares of 
each element in a is strictly greater than the sum of the cubes of each element in b.

E.g.
Kata.ArrayMadness(new int[] {4, 5, 6}, new int[] {1, 2, 3}) => true // because 4 ** 2 + 5 ** 2 + 6 ** 2 > 1 ** 
3 + 2 ** 3 + 3 ** 3

Get your timer out. Are you ready? Ready, get set, GO!!!
*/

public class Kata
{
    public static bool ArrayMadness(int[] a, int[] b)
    {
        int sumOfSquares = 0;
        foreach (int num in a)
        {
            sumOfSquares += num * num;
        }

        int sumOfCubes = 0;
        foreach (int num in b)
        {
            sumOfCubes += num * num * num;
        }

        return sumOfSquares > sumOfCubes;
    }
}