/*
Description

Write function bmi that calculates body mass index (bmi = weight / height2).

if bmi <= 18.5 return "Underweight"

if bmi <= 25.0 return "Normal"

if bmi <= 30.0 return "Overweight"

if bmi > 30 return "Obese"
*/

public class Kata
{
    public static string Bmi(double weight, double height)
    {
        double bmi = weight / (height * height);
        string result = "";
        if (bmi <= 18.5)
        {
            result = "Underweight";
        }
        else if (bmi <= 25.0)
        {
            result = "Normal";
        }
        else if (bmi <= 30.0)
        {
            result = "Overweight";
        }
        else if (bmi > 30.0)
        {
            result = "Obese";
        }
        return result;
    }
}