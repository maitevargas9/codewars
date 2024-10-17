/*
Description

Given a string, you need to write a method that order every letter in this string in ascending order.

Also, you should validate that the given string is not empty or null. If so, the method should return:
"Invalid String!"

Notes
• the given string can be lowercase and uppercase.
• the string could include spaces or other special characters like '# ! or ,'. Sort them based on their ASCII codes

Examples
"hello world" => " dehllloorw"
"bobby"       => "bbboy"
""            => "Invalid String!"
"!Hi You!"    => " !!HYiou"

Good luck! Hope you enjoy it
*/

import java.io.*;
import java.util.Arrays;

public class Ordering {

  public String orderWord(String s) {
    if (s == "") {
      return "Invalid String!";
    }
    if (s == null) {
      return "Invalid String!";
    }
    char[] chars = s.toCharArray();
    Arrays.sort(chars);
    return new String(chars);
  }
}
