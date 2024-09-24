/*
Description

Given a string made of digits [0-9], return a string where each digit is repeated a number of times equals to its value.

Examples
"312" should return "333122"
"102269" should return "12222666666999999999"
*/

using System;
using System.Linq;

public class Digits
{
    public static string Explode(string s)
    {
        return string.Concat(s.Select(x => new string(x, int.Parse($"{x}"))));
    }
}