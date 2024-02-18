export function getGrade(a: number, b: number, c: number): string {
  let score = (a + b + c) / 3;
  let result = '';
  if (90 <= score && score <= 100) {
    result = 'A';
  }
  else if (80 <= score && score < 90) {
    result = 'B';
  }
  else if (70 <= score && score < 80) {
    result = 'C';
  }
  else if (60 <= score && score < 70) {
    result = 'D';
  }
  else if (0 <= score && score < 60) {
    result = 'F';
  }
  return result;
}