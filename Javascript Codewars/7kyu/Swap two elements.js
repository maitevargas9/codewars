/*
Description

Return a new array that contains exactly the same elements as the input array, but with elements a and b swapped.

If the array has multiple copies of a, swap only the first one that appears in the array.
If the array has multiple copies of b, swap only the last one that appears in the array.

For example:
([1, 2, 3, 4], 2, 4) -> [1, 4, 3, 2]
([1, 2, 3, 4, 1, 2, 3, 4], 2, 4) -> [1, 4, 3, 4, 1, 2, 3, 2]
*/

function swapTwo(array, a, b) {
  const result = array.slice();
  result[array.indexOf(a)] = b;
  result[array.lastIndexOf(b)] = a;
  return result;
}
