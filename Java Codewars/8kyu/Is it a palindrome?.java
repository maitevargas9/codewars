/*
Description

Write a function that checks if a given string (case insensitive) is a palindrome.

A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as forwards, such as madam or racecar.
*/

public class Palindrome {

  public static Boolean isPalindrome(String x) {
    if (x == null) {
      return false;
    }
    String original = x.toLowerCase().replaceAll("[^a-z0-9]", "");
    String reversed = new StringBuilder(original).reverse().toString();
    return original.equals(reversed);
  }
}
