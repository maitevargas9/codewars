/*
Description

Define a function that removes duplicates from an array of non negative numbers and returns it as a result.

The order of the sequence has to stay the same.

Examples:
Input -> Output
[1, 1, 2] -> [1, 2]
[1, 2, 1, 1, 3, 2] -> [1, 2, 3]
*/

import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;

public class Solution {

  public static int[] distinct(int[] array) {
    Set<Integer> uniqueItems = new LinkedHashSet<>();

    for (int num : array) {
      uniqueItems.add(num);
    }

    return uniqueItems.stream().mapToInt(Integer::intValue).toArray();
  }
}
