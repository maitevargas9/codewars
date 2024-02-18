export function binaryArrayToNumber(arr: number[]): number {
  return Number.parseInt(arr.join(""), 2);
};