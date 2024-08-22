/*
Description

Some new animals have arrived at the zoo. The zoo keeper is concerned that perhaps the animals do not have the right tails. 
To help her, you must correct the broken function to make sure that the second argument (tail), is the same as the last letter 
of the first argument (body) - otherwise the tail wouldn't fit!

If the tail is right return true, else return false.

The arguments will always be non empty strings, and normal letters.

public class Kata
{
  public static bool CorrectTail(string body, string tail)
  {
    string sub = body.SubString(bodylength - (tail.length));
    
    if (sub = tail)
      return true
    else
      return false
  }
}
*/

public class Kata
{
    public static bool CorrectTail(string body, string tail)
    {
        var sub = body.Substring(body.Length - (tail.Length));

        if (sub == tail)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}