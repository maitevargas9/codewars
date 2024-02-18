/*
Description

There was a test in your class and you passed it. Congratulations!
But you're an ambitious person. You want to know if you're better than the average student in your class.

You receive an array with your peers' test scores. Now calculate the average and compare your score!

Return True if you're better, else False!

Note
Your points are not included in the array of your class's points. For calculating the average point you may add your point to the given array!
*/

export function betterThanAverage(classPoints: number[], yourPoints: number): boolean {
  let sum = 0;
  let avg = 0;
  classPoints.forEach(num => { sum += num });
  avg = sum / classPoints.length;
  return yourPoints > avg ? true : false;
}