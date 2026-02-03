/*
Description

Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

Examples
"This is an example!" ==> "sihT si na !elpmaxe"
"double  spaces"      ==> "elbuod  secaps"
*/

using System;

public static class Kata
{
  public static string ReverseWords(string str)
  {
    var parts = str.Split(new[] { ' ' }, StringSplitOptions.None);

    for (int i = 0; i < parts.Length; i++)
    {
      char[] chars = parts[i].ToCharArray();
      Array.Reverse(chars);
      parts[i] = new string(chars);
    }

    return string.Join(" ", parts);
  }
}