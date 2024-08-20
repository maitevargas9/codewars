/*
Description

Fix the bug in Filtering method

The method is supposed to remove even numbers from the list and return a list that contains the odd numbers.

However, there is a bug in the method that needs to be resolved.
*/

using System;
using System.Collections.Generic;
using System.Linq;

public class Kata
{
    public static List<int> FilterOddNumber(List<int> listOfNumbers)
    {
        for (int i = 0; i < listOfNumbers.Count; i++)
        {
            if (listOfNumbers[i] % 2 == 0)
            {
                listOfNumbers.RemoveAt(i);
                i--;
            }
        }
        return listOfNumbers;
    }
}