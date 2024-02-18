export function sumArray(arr: number[] | null): number {
  return arr != null && arr.length > 1 ? arr.reduce((acc, value) => acc + value, 0) - Math.min(...arr) - Math.max(...arr) : 0;
}