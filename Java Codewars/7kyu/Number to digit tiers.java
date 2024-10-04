/*
Description

Create a function that takes a number and returns an array of strings containing the number cut off at each digit.

Examples
420 should return ["4", "42", "420"]
2017 should return ["2", "20", "201", "2017"]
2010 should return ["2", "20", "201", "2010"]
4020 should return ["4", "40", "402", "4020"]
80200 should return ["8", "80", "802", "8020", "80200"]

PS: The input is guaranteed to be an integer in the range [0, 1000000]
*/

import static java.util.stream.IntStream.range;

public class Solution {

  public static String[] createArrayOfTiers(int num) {
    var s = num + "";
    return range(0, s.length())
      .mapToObj(i -> s.substring(0, i + 1))
      .toArray(String[]::new);
  }
}
