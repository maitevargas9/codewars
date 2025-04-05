/*
Description

You are going to be given a non-empty string. Your job is to return the middle character(s) of the string.
If the string's length is odd, return the middle character.
If the string's length is even, return the middle 2 characters.

Examples:
"test" --> "es"
"testing" --> "t"
"middle" --> "dd"
"A" --> "A"
*/

public class Kata
{
    public static string GetMiddle(string s)
    {
        int length = s.Length;

        if (length % 2 == 0)
        {
            return s.Substring(length / 2 - 1, 2);
        }
        else
        {
            return s.Substring(length / 2, 1);
        }
    }
}