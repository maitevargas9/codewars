/*
Description

My friend wants a new band name for her band. She like bands that use the formula: "The" + a noun with the first 
letter capitalized, for example:
"dolphin" -> "The Dolphin"

However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice and connect them 
together with the first and last letter, combined into one word (WITHOUT "The" in front), like this:
"alaska" -> "Alaskalaska"

Complete the function that takes a noun as a string, and returns her preferred band name written as a string.
*/

public class Kata
{
    public static string BandNameGenerator(string str)
    {
        if (str[0] == str[str.Length - 1])
        {
            return str[0].ToString().ToUpper() + str.Substring(1) + str.Substring(1).ToLower();
        }
        else
        {
            return "The " + char.ToUpper(str[0]) + str.Substring(1).ToLower();
        }
    }
}