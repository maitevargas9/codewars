/*
Description

In this kata you have to write a method that folds a given array of integers by the middle x-times.

An example says more than thousand words:

Fold 1-times:
[1,2,3,4,5] -> [6,6,3]

A little visualization (NOT for the algorithm but for the idea of folding):

 Step 1         Step 2        Step 3       Step 4       Step5
                     5/           5|         5\          
                    4/            4|          4\      
1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
----*----      ----*          ----*        ----*        ----*

Fold 2-times:
[1,2,3,4,5] -> [9,6]
As you see, if the count of numbers is odd, the middle number will stay. Otherwise the fold-point is between the middle-numbers, 
so all numbers would be added in a way.

The array will always contain numbers and will never be null. The parameter runs will always be a positive integer greater than 
0 and says how many runs of folding your method has to do.

If an array with one element is folded, it stays as the same array.

The input array should not be modified!

Have fun coding it and please don't forget to vote and rank this kata! :-)

I have created other katas. Have a look if you like coding and challenges.
*/

export function foldArray(array: number[], runs: number): number[] {
  let foldedArray = [...array];

  for (let run = 0; run < runs; run++) {
    const mid = Math.floor(foldedArray.length / 2);
    const folded: number[] = [];

    for (let i = 0; i < mid; i++) {
      folded.push(foldedArray[i] + foldedArray[foldedArray.length - 1 - i]);
    }

    if (foldedArray.length % 2 !== 0) {
      folded.push(foldedArray[mid]);
    }

    foldedArray = folded;
  }

  return foldedArray;
}
