/*
Description

Triangular number is any amount of points that can fill an equilateral triangle.

Example: the number 6 is a triangular number because all sides of a triangle has the same amount of points.

Hint!
T(n) = n * (n + 1) / 2,
n - is the size of one side.
T(n) - is the triangular number.

Given a number T from interval [1..2147483646], find if it is triangular number or not.
*/

using System;

public class Triangular
{
  public bool isTriangular(int T)
  {
    long d = 1L + 8L * T;
    long sqrt = (long)Math.Sqrt(d);

    if (sqrt * sqrt != d)
    {
      return false;
    }

    return (sqrt - 1) % 2 == 0;
  }
}