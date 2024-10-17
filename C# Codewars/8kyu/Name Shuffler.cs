/*
Description

Write a function that returns a string in which firstname is swapped with last name.

Example(Input --> Output)
"john McClane" --> "McClane john"
*/

using System;
using System.Linq;

public class Kata
{
    public static string NameShuffler(string str)
    {
        return string.Join(" ", str.Split(' ').Reverse());
    }
}