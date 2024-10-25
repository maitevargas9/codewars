/*
Description

The code provided is supposed replace all the dots . in the specified String str with dashes -

But it's not working properly.

Task
Fix the bug so we can all go home early.

Notes
String str will never be null.

using System.Text.RegularExpressions;

public class Kata
{
  public static string ReplaceDots(string str)
  {
    return new Regex(".").Replace(str, "-");
  }
}
*/

using System;

public class Kata
{
    public static string ReplaceDots(string str)
    {
        return str.Replace(".", "-");
    }
}