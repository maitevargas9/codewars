/*
Description

In this kata you will create a function that takes in a list and returns a list with the reverse order.

Examples (Input -> Output)
* [1, 2, 3, 4]  -> [4, 3, 2, 1]
* [9, 2, 0, 7]  -> [7, 0, 2, 9]
*/

using System;
using System.Collections.Generic;

public class Kata
{
    public static List<int> ReverseList(List<int> list)
    {
        List<int> reversedList = new List<int>(list);
        reversedList.Reverse();
        return reversedList;
    }
}