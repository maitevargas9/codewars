/*
Description

Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
The output should be two capital letters with a dot separating them.

It should look like this:
Sam Harris => S.H
patrick feeney => P.F
*/

using System;
using System.Linq;

public class Kata
{
    public static string AbbrevName(string name)
    {
        return string.Join(".", name.Split(' ').Select(w => w[0])).ToUpper();
    }
}