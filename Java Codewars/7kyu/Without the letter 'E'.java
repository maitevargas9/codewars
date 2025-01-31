/*
Description

Is it possible to write a book without the letter 'e' ?

Task
Given String str, return:
How many "e" does it contain (case-insensitive) in string format.
If given String doesn't contain any "e", return: "There is no "e"."
If given String is empty, return empty String.
If given String is `null`/`None`/`nil`, return `null`/`None`/`nil`
*/

public class WithoutLetterE {

  public static String findE(String str) {
    if (str == null) {
      return null;
    }

    if (str.isEmpty()) {
      return "";
    }

    long count = str.chars().filter(ch -> ch == 'e' || ch == 'E').count();

    if (count == 0) {
      return "There is no \"e\".";
    } else {
      return String.valueOf(count);
    }
  }
}
