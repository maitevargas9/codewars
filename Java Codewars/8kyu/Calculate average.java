/*
Description

Write a function which calculates the average of the numbers in a given list.

Note: Empty arrays should return 0.
*/

public class Kata {

  public static double find_average(int[] array) {
    int length = array.length;
    double sum = 0;
    for (int number : array) {
      sum += number;
    }
    return sum / length;
  }
}
