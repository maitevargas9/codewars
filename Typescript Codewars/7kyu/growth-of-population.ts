export const nbYear = (p0: number, percent: number, aug: number, p: number): number => {
  let years = 0;
  while (p0 < p) {
    p0 += Math.floor(p0 * (percent / 100) + aug); 
    years += 1;
  }
  return years;
}