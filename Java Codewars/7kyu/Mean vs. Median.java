/*
Description

Your goal is to implement the method meanVsMedian which accepts an odd-length 
array of integers and returns one of the following:
'mean' - in case mean value is larger than median value
'median' - in case median value is larger than mean value
'same' - in case both mean and median share the same value

Reminder: Median

Array will always be valid (odd-length >= 3)
*/

import java.util.Arrays;

public class Solution {

  public static String meanVsMedian(int[] numbers) {
    double mean = Arrays.stream(numbers).average().orElse(0);

    Arrays.sort(numbers);
    double median = numbers[numbers.length / 2];

    if (mean > median) {
      return "mean";
    } else if (median > mean) {
      return "median";
    } else {
      return "same";
    }
  }
}
