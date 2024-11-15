/*
Description

Given a logarithm base X and two values A and B, return a sum of logratihms with the base X: 
logXA + logXB.
*/

public class EasyLogs {

  public static double logs(double x, double a, double b) {
    return (Math.log(a) + Math.log(b)) / Math.log(x);
  }
}
