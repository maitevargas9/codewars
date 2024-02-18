export function betterThanAverage(classPoints: number[], yourPoints: number): boolean {
  let sum = 0;
  let avg = 0;
  classPoints.forEach( num => { sum += num });
  avg = sum / classPoints.length;
  return yourPoints > avg ? true : false;
}