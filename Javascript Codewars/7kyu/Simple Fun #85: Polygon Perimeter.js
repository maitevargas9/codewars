/*
Description

Task

You have a rectangular white board with some black cells. The black cells create a connected black figure, 
i.e. it is possible to get from any black cell to any other one through connected adjacent (sharing a common side) black cells.

Find the perimeter of the black figure assuming that a single cell has unit length.

Example

For
matrix = [[false, true,  true ],
          [true,  true,  false],
          [true,  false, false]]```
the output should be `12`.
![](https://codefightsuserpics.s3.amazonaws.com/tasks/polygonPerimeter/img/example1.png?_tm=1474901184061)
For
matrix = [[true, true, true], [true, false, true], [true, true, true]]``` the output should be 16.

Input/Output
[input] 2D boolean array matrix
A matrix of booleans representing the rectangular board where true means a black cell and false means a white one.
Constraints:
2 ≤ matrix.length ≤ 10,
2 ≤ matrix[0].length ≤ 10.
[output] an integer
*/

function polygonPerimeter(matrix) {
  return matrix.reduce(
    (a, s, i) =>
      a +
      s.reduce(
        (a, x, j) =>
          a +
          x *
            [
              [0, 1],
              [0, -1],
              [1, 0],
              [-1, 0]
            ].filter(([di, dj]) => !(matrix[i + di] && matrix[i + di][j + dj]))
              .length,
        0
      ),
    0
  );
}
