export class Kata {
  static highAndLow(numbers: string): string {
    let arr = numbers.split(" ").map((c) => parseInt(c));
    let max = Math.max(...arr);
    let min = Math.min(...arr);
    return max + ' ' + min;
  }
}