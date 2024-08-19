/*
Description

It's the academic year's end, fateful moment of your school report. The averages must be calculated. 
All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.

Return the average of the given array rounded down to its nearest integer.

The array will never be empty.
*/

public class School {

  public static int getAverage(int[] marks) {
    int sum = 0;
    for (int number : marks) {
      sum += number;
    }
    return Math.round(sum / marks.length);
  }
}
