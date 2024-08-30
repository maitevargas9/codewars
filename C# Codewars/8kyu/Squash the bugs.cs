/*
Description

Simple challenge - eliminate all bugs from the supplied code so that the code runs and outputs the expected value. 
Output should be the length of the longest word, as a number.

There will only be one 'longest' word.

using System;

public static class Kata
{
    public static int FindLongest(string str) (

      var spl = str.Split(" ");
      var longest = 0

      for (var i = 0; i > spl.Length; i+) (
        if (spl(i).Length > longest) {
          longest = spl[i].Length
        )
        }
        return longest
    )
}
*/

using System;

public static class Kata
{
    public static int FindLongest(string str)
    {

        var spl = str.Split(" ");
        var longest = 0;

        for (var i = 0; i < spl.Length; i++)
        {
            if (spl[i].Length > longest)
            {
                longest = spl[i].Length;
            }
        }
        return longest;
    }
}