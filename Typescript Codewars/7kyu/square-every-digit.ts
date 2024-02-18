export class Kata {
  static squareDigits(num: number): number {
    return parseInt(num.toString().split("").map(num => parseInt(num)).map(num => num * num).join(""))
  }
}