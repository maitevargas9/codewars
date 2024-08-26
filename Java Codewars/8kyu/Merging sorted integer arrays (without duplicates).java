/*
Description

Write a function that merges two sorted arrays into a single one. The arrays only contain integers. Also, 
the final outcome must be sorted and not have any duplicate.
*/

import java.util.ArrayList;
import java.util.Comparator;

public class Kata {

  public static int[] mergeArrays(int[] first, int[] second) {
    ArrayList<Integer> nums = new ArrayList();
    for (int f : first) {
      if (nums.contains(f)) {
        continue;
      }
      nums.add(f);
    }
    for (int s : second) {
      if (nums.contains(s)) {
        continue;
      }
      nums.add(s);
    }
    nums.sort(Comparator.naturalOrder());
    return nums.stream().mapToInt(Integer::intValue).toArray();
  }
}
