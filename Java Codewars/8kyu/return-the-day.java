/*
Description

Complete the function which returns the weekday according to the input number
1 returns "Sunday"
2 returns "Monday"
3 returns "Tuesday"
4 returns "Wednesday"
5 returns "Thursday"
6 returns "Friday"
7 returns "Saturday"
Otherwise returns "Wrong, please enter a number between 1 and 7"
*/

public class DayOfWeek {

  public static String getDay(int n) {
    var result = "";
    switch (n) {
      case 1:
        result = "Sunday";
        break;
      case 2:
        result = "Monday";
        break;
      case 3:
        result = "Tuesday";
        break;
      case 4:
        result = "Wednesday";
        break;
      case 5:
        result = "Thursday";
        break;
      case 6:
        result = "Friday";
        break;
      case 7:
        result = "Saturday";
        break;
      default:
        result = "Wrong, please enter a number between 1 and 7";
    }
    return result;
  }
}
