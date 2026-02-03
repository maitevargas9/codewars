/*
Description

You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

a can contain numbers or strings. x can be either.

Return true if the array contains the value, false if not.
*/

using System;

public class Kata
{
  public static bool Check(object[] a, object x)
  {
    foreach (var item in a)
    {
      if (item.Equals(x))
      {
        return true;
      }
    }
    return false;
  }
}
