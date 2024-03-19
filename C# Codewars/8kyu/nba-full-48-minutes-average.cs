/*
Description

An NBA game runs 48 minutes (Four 12 minute quarters). Players do not typically play the full game, 
subbing in and out as necessary. Your job is to extrapolate a player's points per game if they played the full 48 minutes.

Write a function that takes two arguments, ppg (points per game) and mpg (minutes per game) and returns a straight 
extrapolation of ppg per 48 minutes rounded to the nearest tenth. Return 0 if 0.

Examples:
Kata.NbaExtrap(12, 20) => 28.8
Kata.NbaExtrap(10, 10) => 48
Kata.NbaExtrap(5, 17)  => 14.1
Kata.NbaExtrap(0, 0)   => 0

Notes:
All inputs will be either be an integer or float.
Follow your dreams!
*/

using System;

public class Kata
{
    public static double NbaExtrap(double ppg, double mpg)
    {
        return mpg == 0 ? 0.0f : Math.Round(ppg * 48.0f / mpg, 1);
    }
}