/*
Description

Background
I have stacked some cannon balls in a triangle-based pyramid.

Kata Task
Given the number of layers of my stack, what is the total height?
Return the height as multiple of the ball diameter.

Example
The image above shows a stack of 3 layers.

Notes
layers >= 0
approximate answers (within 0.001) are good enough
*/

public class Dinglemouse {

  public static double stackHeight3d(int layers) {
    return layers == 0 ? 0.0 : 1 + (layers - 1) * Math.sqrt(2.0 / 3.0);
  }
}
