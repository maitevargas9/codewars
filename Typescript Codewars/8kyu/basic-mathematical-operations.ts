export function basicOp(operation: string, value1: number, value2: number): number {
  let num = 0;
  if (operation === '+') {
      num = value1 + value2;
  }
  else if (operation === '-') {
      num = value1 - value2;
  }
  else if (operation === '*') {
      num = value1 * value2;
  }
  else if (operation === '/') {
      num = value1 / value2;
  }
  return num;
}