/*
Description

Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).

If they are, change the array value to a string of that vowel.

input [100,100,116,105,117,121]=>[100,100,116,"i","u",121] output Return the resulting array.
*/

import java.util.List;
import java.util.stream.Collectors;

public class VowelMapper {

  public static List<Object> isVow(List<Integer> a) {
    return a
      .stream()
      .map(n -> {
        if (n == 97) {
          return "a";
        }
        if (n == 101) {
          return "e";
        }
        if (n == 105) {
          return "i";
        }
        if (n == 111) {
          return "o";
        }
        if (n == 117) {
          return "u";
        }
        return n;
      })
      .collect(Collectors.toList());
  }
}
