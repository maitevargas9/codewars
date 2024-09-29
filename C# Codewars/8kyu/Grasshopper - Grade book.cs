/*
Description

Grade book

Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with 
that grade.

Numerical Score	Letter Grade
90 <= score <= 100	   'A'
80 <= score < 90	   'B'
70 <= score < 80	   'C'
60 <= score < 70	   'D'
0 <= score < 60	       'F'

Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.
*/

using System;

public class Kata
{
    public static char GetGrade(int s1, int s2, int s3)
    {
        int score = (s1 + s2 + s3) / 3;
        if (90 <= score && score <= 100)
        {
            return 'A';
        }
        else if (80 <= score && score < 90)
        {
            return 'B';
        }
        else if (70 <= score && score < 80)
        {
            return 'C';
        }
        else if (60 <= score && score < 70)
        {
            return 'D';
        }
        return 'F';
    }
}