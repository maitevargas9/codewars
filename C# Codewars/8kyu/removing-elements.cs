/*
Description

Take an array and remove every second element from the array. Always keep the first element and start 
removing with the next element.

Example:

["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]

None of the arrays will be empty, so you don't have to worry about that!
*/

using System.Linq;

public static class Kata
{
    public static object[] RemoveEveryOther(object[] arr)
    {
        return arr.Where((a, b) => b % 2 == 0).ToArray();
    }
}