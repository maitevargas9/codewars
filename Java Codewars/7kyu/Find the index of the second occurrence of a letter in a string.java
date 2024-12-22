/*
Description

In this kata, you need to write a function that takes a string and a letter as input and then returns the index of the second 
occurrence of that letter in the string. If there is no such letter in the string, or if the letter occurs only once in the 
string, -1 should be returned.

Examples:
for inputs  "Hello world!!!", 'l'  ->  return 3
for inputs  "Hello world!!!", 'A'  ->  return -1
*/

public class SecondOcurrence {

  public static int secondSymbol(String str, char c) {
    int firstIndex = str.indexOf(c);
    if (firstIndex != -1) {
      return str.indexOf(c, firstIndex + 1);
    }
    return -1;
  }
}
