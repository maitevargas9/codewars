/*
Description

Move every letter in the provided string forward 10 letters through the alphabet.

If it goes past 'z', start again at 'a'.

Input will be a string with length > 0.
*/

public class MoveTen {

  public static String moveTen(String s) {
    String element = "abcdefghijklmnopqrstuvwxyz";
    StringBuilder word = new StringBuilder();

    for (int i = 0; i < s.length(); i++) {
      int letterIndex = element.indexOf(s.charAt(i));
      int value = (letterIndex + 10) % 26;
      word.append(element.charAt(value));
    }

    return word.toString();
  }
}
