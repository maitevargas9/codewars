/*
Description

Have you heard about the myth that if you fold a paper enough times, you can reach the moon with it? Sure you have, 
but exactly how many? Maybe it's time to write a program to figure it out.

You know that a piece of paper has a thickness of 0.0001m. Given distance in units of meters, calculate how many times 
you have to fold the paper to make the paper reach this distance.
(If you're not familiar with the concept of folding a paper: Each fold doubles its total thickness.)

Note: Of course you can't do half a fold. You should know what this means ;P

Also, if somebody is giving you a negative distance, it's clearly bogus and you should yell at them by returning null 
(or whatever equivalent in your language). In Shell please return None. In C and COBOL please return -1.
*/

using System;

public class Kata
{
    public static int? FoldTo(double distance)
    {
        return distance < 0 ? null : (int?)(distance < 0.0001 ? 0 : Math.Ceiling(Math.Log(distance * 10000, 2)));
    }
}