/*
Description

Find the number with the most digits.

If two numbers in the argument array have the same number of digits, return the first one in the array.
*/

export class Kata {
  static findLongest(array: number[]): number {
    return array.reduce((a, b) => (`${b}`.length > `${a}`.length ? b : a));
  }
}
