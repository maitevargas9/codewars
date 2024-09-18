/*
Description

Every budding hacker needs an alias! The Phantom Phreak, Acid Burn, Zero Cool and Crash Override are some notable examples from 
the film Hackers.

Your task is to create a function that, given a proper first and last name, will return the correct alias.

Notes:

Two objects that return a one word name in response to the first letter of the first name and one for the first letter of the 
surname are already given. See the examples below for further details.

If the first character of either of the names given to the function is not a letter from A - Z, you should return "Your name 
must start with a letter from A - Z."

Sometimes people might forget to capitalize the first letter of their name so your function should accommodate for these 
grammatical errors.

Examples
FirstName = {{"A", "Alpha"}, {"B", "Beta"}, {"C", "Cache"}, ...}
Surname = {{"A", "Analogue"}, {"B", "Bomb"}, {"C", "Catalyst"} ...}

// These dictionaries are defined on other partial Kata class

AliasGen('Larry', 'Brentwood') == 'Logic Bomb'
AliasGen('123abc', 'Petrovic') == 'Your name must start with a letter from A - Z.'

Happy hacking!

class is partial,
FirstName and Surname dictionaries are defined in other part of partial
you can access them directly here
*/

public partial class Kata
{
    public static string AliasGen(string fName, string lName)
    {
        return char.IsLetter(fName[0]) && char.IsLetter(lName[0])
              ? $"{FirstName[fName[0].ToString()]} {Surname[lName[0].ToString()]}"
              : "Your name must start with a letter from A - Z.";
    }
}