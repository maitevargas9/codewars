/*
Description

This series of katas will introduce you to basics of doing geometry with computers.

Point objects have fields X and Y.

Write a function calculating distance between Point a and Point b.

Input coordinates fit in range − 50 ⩽ x,y ⩽ 50 − 50 ⩽ x,y ⩽ 50. 
Tests compare expected result and actual answer with tolerance of 1e-6.
*/

using System;

public class Kata
{
    public static double DistanceBetweenPoints(Point a, Point b)
    {
        return Math.Sqrt(Math.Pow(a.X - b.X, 2) + Math.Pow(a.Y - b.Y, 2));
    }
}
