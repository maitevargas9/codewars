/*
Description

You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
Array can contain numbers or strings. X can be either.
Return true if the array contains the value, false if not.
*/

export const check = (a: (number | string)[], x: number | string): boolean => {
  return a.includes(x) ? true : false;
};
