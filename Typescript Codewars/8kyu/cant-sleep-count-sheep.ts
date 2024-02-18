export function countSheep(num: number): string {
  return [...Array(num).keys()].reduce((res, i) => res + (i + 1) + ' sheep...', '');
}