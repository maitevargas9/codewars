/*
Description

Complete the solution so that it reverses all of the words within the string passed in.

Words are separated by exactly one space and there are no leading or trailing spaces.

Example(Input --> Output):
"The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"
*/

public class ReverseWords {

  public static String reverseWords(String str) {
    String[] words = str.trim().split("\\s+");
    StringBuilder reversed = new StringBuilder();
    for (int i = words.length - 1; i >= 0; i--) {
      reversed.append(words[i]);
      if (i > 0) {
        reversed.append(" ");
      }
    }
    return reversed.toString();
  }
}
