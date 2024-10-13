/*
Description

A person's full name is usually composed of a first name, middle name and last name; however in some cultures 
(for example in South India) there may be more than one middle name.

Write a function that takes the full name of a person, and returns the initials, separated by dots ('.'). 
The initials must be uppercase. The last name of the person must appear in full, with its first letter in uppercase as well.

See the pattern below:
"code wars"            ---> "C.Wars"
"Barack hussein obama" ---> "B.H.Obama"

Names in the full name are separated by exactly one space (' ' ) ; without leading or trailing spaces. 
Names will always be lowercase, except optionally their first letter.
*/

import java.lang.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class CWars {

  public static String initials(String name) {
    String[] words = name.split(" ");
    int length = words.length - 1;
    return IntStream
      .rangeClosed(0, length)
      .mapToObj(i -> {
        String word = words[i];
        char firstSymbol = Character.toUpperCase(word.charAt(0));
        return i != length
          ? String.format("%s.", firstSymbol)
          : String.format("%s%s", firstSymbol, word.substring(1));
      })
      .collect(Collectors.joining());
  }
}
