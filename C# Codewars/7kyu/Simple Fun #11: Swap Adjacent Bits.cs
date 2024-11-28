/*
Description

Task
You are given a 32-bit integer n. Swap each pair of adjacent bits in its binary representation and return the result as a 
decimal number.
The potential leading zeroes of the binary representations have to be taken into account, e.g. 0b100 as a 32-bit integer is 
0b00000000000000000000000000000100 and is reversed to 0b1000.

Examples
For n = 13, the output should be 14:
1310 = 11012 --> 11102 = 1410
For n = 74, the output should be 133:
7410 = 010010102 --> 100001012 = 13310

Input/Output
[input] integer n 0 ≤ n < 2^30.
[output] an integer
*/

namespace myjinxin
{
    using System;

    public class Kata
    {
        public int SwapAdjacentBits(int n)
        {
            return unchecked((n & (int)0x55555555) << 1 | (n & (int)0xaaaaaaaa) >> 1);
        }
    }
}