/*
Description

Your task in this kata is to implement a function that calculates the sum of the integers inside a string. 
For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

Note: only positive integers will be tested.
*/

using System;
using System.Linq;
using System.Text.RegularExpressions;

public class Kata
{
    public static int SumOfIntegersInString(string s)
    {
        var numbers = Regex.Matches(s, @"\d+")
                               .Cast<Match>()
                               .Select(match => int.Parse(match.Value))
                               .ToList();

        return numbers.Any() ? numbers.Sum() : 0;
    }
}