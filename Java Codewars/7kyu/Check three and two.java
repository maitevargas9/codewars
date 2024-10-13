/*
Description

Given an array with exactly 5 strings "a", "b" or "c" (chars in Java, characters in Fortran, Chars in Haskell), 
check if the array contains three and two of the same values.

Examples
["a", "a", "a", "b", "b"] ==> true  // 3x "a" and 2x "b"
["a", "b", "c", "b", "c"] ==> false // 1x "a", 2x "b" and 2x "c"
["a", "a", "a", "a", "a"] ==> false // 5x "a"
*/

import java.util.*;

public class Solution {

  public boolean checkThreeAndTwo(char[] chars) {
    int[] counts = new int[26];
    for (char c : chars) {
      counts[c - 'a']++;
    }
    return Arrays
      .stream(counts)
      .filter(x -> x != 0)
      .allMatch(x -> x == 2 || x == 3);
  }
}
