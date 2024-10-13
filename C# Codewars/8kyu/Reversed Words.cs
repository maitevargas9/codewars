/*
Description

Complete the solution so that it reverses all of the words within the string passed in.

Words are separated by exactly one space and there are no leading or trailing spaces.

Example(Input --> Output):
"The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"
*/

using System;
using System.Linq;

public class Kata
{
    public static string ReverseWords(string str)
    {
        return String.Join(" ", str.Split(' ').Reverse().ToArray());
    }
}