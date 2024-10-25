/*
Description

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"
*/

import java.util.Arrays;

public class Kata {

  public static boolean isAnagram(String a, String b) {
    String str1 = a.replaceAll("\\s", "").toLowerCase();
    String str2 = b.replaceAll("\\s", "").toLowerCase();

    if (str1.length() != str2.length()) {
      return false;
    }

    char[] chars1 = str1.toCharArray();
    char[] chars2 = str2.toCharArray();
    Arrays.sort(chars1);
    Arrays.sort(chars2);

    return Arrays.equals(chars1, chars2);
  }
}
