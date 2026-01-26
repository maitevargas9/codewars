/*
Description

Complete the function which converts hex number (given as a string) to a decimal number.
*/

using System;

public class Kata
{
  public static int HexToDec(string hexString)
  {
    if (hexString.StartsWith("-"))
    {
      return -Convert.ToInt32(hexString.Substring(1), 16);
    }
    return Convert.ToInt32(hexString, 16);
  }
}