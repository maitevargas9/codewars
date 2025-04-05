/*
Description

Wilson primes satisfy the following condition. Let P represent a prime number.

Then, (P−1)!+1/P*P should give a whole number, where P! is the factorial of P.

Your task is to create a function that returns true if the given number is a Wilson prime and false otherwise.
*/

public class WilsonPrime {

  public static boolean amIWilson(long n) {
    if (n == 5 || n == 13 || n == 563) {
      return true;
    }
    return false;
  }
}
