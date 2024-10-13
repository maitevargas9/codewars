/*
Description

Implement a function that returns the minimal and the maximal value of a list (in this order).
*/

import java.util.*;
import java.util.List;

class MinMax {

  static int[] getMinMax(List<Integer> list) {
    return new int[] { Collections.min(list), Collections.max(list) };
  }
}
