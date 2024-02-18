export function findAverage(array: number[]): number {
  return array.length != 0 ? array.reduce((x, y) => x + y, 0) / array.length : 0;
}