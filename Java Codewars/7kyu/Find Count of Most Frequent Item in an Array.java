/*
Description

Complete the function to find the count of the most frequent item of an array. You can assume that input is an array of integers. 
For an empty array return 0

Example
input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
ouptut: 5 
The most frequent number in the array is -1 and it occurs 5 times.
*/

import java.util.*;

public class Kata {

  public static int mostFrequentItemCount(int[] collection) {
    Map<Integer, Integer> counter = new HashMap<Integer, Integer>();
    int maxCount = 0;
    int count;
    for (int n : collection) {
      count = counter.getOrDefault(n, 0) + 1;
      counter.put(n, count);
      maxCount = count > maxCount ? count : maxCount;
    }
    return maxCount;
  }
}
