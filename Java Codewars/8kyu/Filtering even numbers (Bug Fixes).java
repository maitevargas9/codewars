/*
Description

Fix the bug in Filtering method

The method is supposed to remove even numbers from the list and return a list that contains the odd numbers.

However, there is a bug in the method that needs to be resolved.

import java.util.List;

public class Kata13December {
    public static List<Integer> filterOddNumber(List<Integer> listOfNumbers)
    {
        for (int i = 0; i < listOfNumbers.size(); i++)
        {
            if (listOfNumbers.get(i)%2 == 0)
            {
                listOfNumbers.remove(i);
            }
        }
        return listOfNumbers;
    }
}
*/

import java.util.List;

public class Kata13December {

  public static List<Integer> filterOddNumber(List<Integer> listOfNumbers) {
    for (int i = listOfNumbers.size() - 1; i >= 0; i--) {
      if (listOfNumbers.get(i) % 2 == 0) {
        listOfNumbers.remove(i);
      }
    }
    return listOfNumbers;
  }
}
