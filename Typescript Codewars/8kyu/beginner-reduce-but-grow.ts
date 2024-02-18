export function grow(arr: number[]): number {
  return arr.reduce((x, y) => x * y, 1);
}