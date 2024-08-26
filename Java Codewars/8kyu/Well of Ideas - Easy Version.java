/*
Description

For every good kata idea there seem to be quite a few bad ones!

In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good 
ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, 
return 'Fail!'.
*/

import java.util.Arrays;

public class Kata {

  public static String well(String[] x) {
    long count = Arrays.stream(x).filter(i -> i.equals("good")).count();
    return count > 2 ? "I smell a series!" : count > 0 ? "Publish!" : "Fail!";
  }
}
