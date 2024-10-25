/*
Description

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"
*/

using System;
using System.Linq;

public class Kata
{
    public static bool IsAnagram(string a, string b)
    {
        string str1 = new string(a.Replace(" ", "").ToLower().ToCharArray());
        string str2 = new string(b.Replace(" ", "").ToLower().ToCharArray());

        if (str1.Length != str2.Length)
        {
            return false;
        }

        char[] chars1 = str1.ToCharArray();
        char[] chars2 = str2.ToCharArray();
        Array.Sort(chars1);
        Array.Sort(chars2);

        return chars1.SequenceEqual(chars2);
    }
}