export const summation = (num: number) => { 
  return Array(num).fill(true).reduce((sum, item, index) => sum + index + 1, 0);
}