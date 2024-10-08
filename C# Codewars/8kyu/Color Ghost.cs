/*
Description

Color Ghost
Create a class Ghost
Ghost objects are instantiated without any arguments.
Ghost objects are given a random color attribute of "white" or "yellow" or "purple" or "red" when instantiated
ghost = new Ghost();
ghost.color //=> "white" or "yellow" or "purple" or "red"
*/

using System;

public class Ghost
{
    private static string[] colors = { "white", "yellow", "purple", "red" };
    private string color;

    public Ghost()
    {
        color = colors[new Random().Next(colors.Length)];
    }

    public string GetColor()
    {
        return color;
    }
}
