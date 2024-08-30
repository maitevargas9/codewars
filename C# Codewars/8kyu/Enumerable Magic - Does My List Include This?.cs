/*
Description

Create a method that accepts a list and an item, and returns true if the item belongs to the list, otherwise false.
*/

using System;

public class Kata
{
    public static bool Include(int[] arr, int item)
    {
        return Array.Exists(arr, element => element == item);
    }
}