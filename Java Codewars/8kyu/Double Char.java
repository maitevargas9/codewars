/*
Description

Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

Examples (Input -> Output):
* "String"      -> "SSttrriinngg"
* "Hello World" -> "HHeelllloo  WWoorrlldd"
* "1234!_ "     -> "11223344!!__  "

Good Luck!
*/

public class Solution {

  public static String doubleChar(String s) {
    StringBuilder result = new StringBuilder();

    for (char c : s.toCharArray()) {
      result.append(c).append(c);
    }

    return result.toString();
  }
}
