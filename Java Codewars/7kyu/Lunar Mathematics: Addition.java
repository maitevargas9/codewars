/*
Description

Lunar Mathematics, otherwise known as 'Dismal Mathematics' (a play on 'decimal mathematics'), was created as an alternate way 
to view mathematics interacts with numbers. Here, we will create the addition function.

On the moon, there is no need to carry over numbers into the next column. Instead, we take the largest value of each column, 
and set that as our total.

Examples:
8
+ 7
----
8 <- Since 8 is the larger number of the two, it is the one used.

234
+ 180
-----
284 <- the larger values of each number are used for each potion.

50
+59
------
59 <- If a number in two columns match, either one of the numbers can be used.

465
+ 72
-----
475 <- You must handle situations where numbers are not of equal length

Assume all numbers given are valid, nonnegative integers (as there are no negative numbers on the moon).
*/

public class LunarCalculator {

  public static long add(long number1, long number2) {
    long result = 0;
    int rank = 1;
    while (number1 != 0 || number2 != 0) {
      result += Math.max(number1 % 10, number2 % 10) * rank;
      number1 = number1 / 10;
      number2 = number2 / 10;
      rank *= 10;
    }
    return result;
  }
}
