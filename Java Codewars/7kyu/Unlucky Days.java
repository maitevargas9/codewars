/*
Description

Friday 13th or Black Friday is considered as unlucky day. Calculate how many unlucky days are in the given year.

Find the number of Friday 13th in the given year.

Input: Year in Gregorian calendar as integer.

Output: Number of Black Fridays in the year as an integer.

Examples:
unluckyDays(2015) == 3
unluckyDays(1986) == 1
*/

import static java.time.DayOfWeek.FRIDAY;
import static java.util.stream.IntStream.range;

import java.time.LocalDate;

public class Kata {

  public static int unluckyDays(int year) {
    return range(1, 13)
      .map(i -> LocalDate.of(year, i, 13).getDayOfWeek().equals(FRIDAY) ? 1 : 0)
      .sum();
  }
}
