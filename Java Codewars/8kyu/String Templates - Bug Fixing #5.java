/*
Description

Oh no! Timmy hasn't followed instructions very carefully and forgot how to use the new String Template feature, Help Timmy with 
his string template so it works as he expects!

public class Kata 
{
    public static String buildString(String... args)
    {
      return
    }
}
*/

public class Kata {

  public static String buildString(String... args) {
    return "I like " + String.join(", ", args) + "!";
  }
}
