/*
Description

Create a function called _if which takes 3 arguments: a value bool and 2 functions 
(which do not take any parameters): func1 and func2

When bool is truthy, func1 should be called, otherwise call the func2.

Example:
Kata._if(true, () -> System.out.println("true"), () -> System.out.println("false"));
// prints "true" to the System out.
*/

public class Kata {

  public static void _if(Boolean bool, Runnable func1, Runnable func2) {
    if (Boolean.TRUE.equals(bool)) {
      func1.run();
    } else {
      func2.run();
    }
  }
}
