export function arrayDiff(a: number[], b: number[]): number[] {
  return a.filter(item => b.indexOf(item) < 0);
}