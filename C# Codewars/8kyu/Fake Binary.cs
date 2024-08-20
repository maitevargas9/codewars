/*
Description

Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. 
Return the resulting string.
Note: input will never be an empty string
*/

using System.Linq;

public class Kata
{
    public static string FakeBin(string x)
    {
        return string.Concat(x.Select(a => a < '5' ? "0" : "1"));
    }
}
