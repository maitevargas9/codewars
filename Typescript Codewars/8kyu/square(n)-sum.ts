export function squareSum(numbers: number[]): number {
  let sum = 0;
  numbers.forEach((num) => { sum += Math.pow(num,2) });
  return sum;
}