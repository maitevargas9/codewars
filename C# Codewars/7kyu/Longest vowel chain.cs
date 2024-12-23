/*
Description

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a 
lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the 
length of the longest vowel substring. Vowels are any of aeiou.

Good luck!
*/

using System;
using System.Linq;
using System.Text.RegularExpressions;

public static class Kata
{
    public static int Solve(string str)
    {
        return Regex.Split(str, "[^aeiou]+").Max(element => element.Length);
    }
}