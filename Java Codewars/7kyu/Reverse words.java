/*
Description

Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

Examples
"This is an example!" ==> "sihT si na !elpmaxe"
"double  spaces"      ==> "elbuod  secaps"
*/

public class Kata {

  public static String reverseWords(final String original) {
    String[] parts = original.split(" ", -1);
    StringBuilder result = new StringBuilder();

    for (int i = 0; i < parts.length; i++) {
      String word = parts[i];
      result.append(new StringBuilder(word).reverse());
      if (i < parts.length - 1) {
        result.append(" ");
      }
    }

    return result.toString();
  }
}
