/*
Description

Given a sequence of numbers, find the largest pair sum in the sequence.

For example
[10, 14, 2, 23, 19] -->  42 (= 23 + 19)
[99, 2, 2, 23, 19]  --> 122 (= 99 + 23)
Input sequence contains minimum two elements and every element is an integer.
*/

import java.util.*;

public class Solution {

  public static int largestPairSum(int[] numbers) {
    int maxSum = Integer.MIN_VALUE;
    for (int i = 0; i < numbers.length; i++) {
      for (int j = i + 1; j < numbers.length; j++) {
        int sum = numbers[i] + numbers[j];
        if (sum > maxSum) {
          maxSum = sum;
        }
      }
    }
    return maxSum;
  }
}
