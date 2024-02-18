export const digitize = (n: number): number[] => {
  return String(n).split("").reverse().map(Number);
};