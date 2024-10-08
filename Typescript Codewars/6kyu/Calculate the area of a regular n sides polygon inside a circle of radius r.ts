/*
Description

Write the following function:
export function areaOfPolygonInsideCircle(circleRadius: number, numberOfSides: number): number

It should calculate the area of a regular polygon of numberOfSides, number-of-sides, or number_of_sides 
sides inside a circle of radius circleRadius, circle-radius, or circle_radius which passes through all the 
vertices of the polygon (such circle is called circumscribed circle or circumcircle).

The answer should be a number rounded to 3 decimal places.

Input :: Output Examples
areaOfPolygonInsideCircle(3, 3) // returns 11.691
areaOfPolygonInsideCircle(5.8, 7) // returns 92.053
areaOfPolygonInsideCircle(4, 5) // returns 38.042

Note: if you need to use Pi in your code, use the native value of your language unless stated otherwise.
*/

export function areaOfPolygonInsideCircle(
  circleRadius: number,
  numberOfSides: number
): number {
  let angle = Math.PI / numberOfSides;
  let area =
    (circleRadius * circleRadius * numberOfSides * Math.sin(angle * 2)) / 2;
  return +area.toFixed(3);
}
