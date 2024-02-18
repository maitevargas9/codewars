export function points(games : string[]): number {
  let sumPoints = 0;
  for(let i = 0; i < games.length; i++){
    let gamesHolder = games[i];
    let x = gamesHolder[0];
    let y = gamesHolder[2];
    if (x > y) {
      sumPoints += 3;
    }
    else if (x == y) {
      sumPoints += 1;
    }
    else if (x < y) {
      sumPoints += 0;
    }
  }
  return sumPoints;
}