/*
Description

Complete the solution so that it reverses the string passed into it.
'world'  =>  'dlrow'
'word'   =>  'drow'
*/

using System;
using System.Linq;

public static class Kata
{
    public static string Solution(string str)
    {
        return new string(str.ToArray().Reverse().ToArray());
    }
}