/*
Description

Task.
Calculate area of given triangle. Create a function t_area that will take a string which will represent triangle, 
find area of the triangle, one space will be equal to one length unit. The smallest triangle will have one length unit.

Hints
Ignore dots.
All triangles will be right isoceles.

Example:
.
.      .  
.      .       .      ---> should return 2.0
.
.      .  
.      .       .     
.      .       .      .      ---> should return 4.5
*/

public class Kata {

  public static float tArea(String tStr) {
    return (
      (float) Math.pow(
        (-1 + Math.sqrt(9 + 4 * (tStr.length() - 3))) / 2 - 1,
        2
      ) /
      2
    );
  }
}
