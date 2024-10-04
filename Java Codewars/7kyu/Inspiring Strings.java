/*
Description

Given a string of space separated words, return the longest word.
If there are multiple longest words, return the rightmost longest word.

Examples
"red white blue"  =>  "white"
"red blue gold"   =>  "gold"
*/

import java.util.Arrays;

public class Kata {

  public static String longestWord(String wordString) {
    return Arrays
      .stream(wordString.split(" "))
      .reduce((x, y) -> x.length() <= y.length() ? y : x)
      .get();
  }
}
