/*
Description

In this Kata, you will be given a lower case string and your task will be to remove k characters from that string using 
the following rule:
- first remove all letter 'a', followed by letter 'b', then 'c', etc...
- remove the leftmost character first.

For example: 
solve('abracadabra', 1) = 'bracadabra' # remove the leftmost 'a'.
solve('abracadabra', 2) = 'brcadabra'  # remove 2 'a' from the left.
solve('abracadabra', 6) = 'rcdbr'      # remove 5 'a', remove 1 'b' 
solve('abracadabra', 8) = 'rdr'
solve('abracadabra',50) = ''
*/

public class SimpleLetterRemoval {

  public static String solve(String s, int k) {
    for (char letter = 'a'; letter <= 'z' && k > 0; letter++) {
      while (s.indexOf(letter) != -1 && k > 0) {
        s = s.replaceFirst(Character.toString(letter), "");
        k--;
      }
    }
    return s;
  }
}
