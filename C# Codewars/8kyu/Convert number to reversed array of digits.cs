/*
Description

Convert number to reversed array of digits

Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

Example(Input => Output):
35231 => [1,3,2,5,3]
0 => [0]
*/

using System;
using System.Collections.Generic;

namespace Solution
{
    class Digitizer
    {
        public static long[] Digitize(long n)
        {
            string str = n.ToString();
            char[] chArr = str.ToCharArray();
            Array.Reverse(chArr);
            long[] longArr = new long[chArr.Length];
            for (int i = 0; i < longArr.Length; i++)
            {
                long number;
                if (Int64.TryParse(chArr[i].ToString(), out number))
                {
                    longArr[i] = number;
                }
            }
            return longArr;
        }
    }
}
