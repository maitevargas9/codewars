// Solution 1
export const fakeBin = (x: string): string => {
  return x.replace(/\d/g, n => Number(n) < 5 ? '0' : '1');
};

// Solution 2
export const fakeBin2 = (x: string): string => {
  let outputString = "";
  for (let i = 0; i < x.length; i++) {
    if (Number(x[i]) <= 4) {
        outputString += "0";
    } else if (Number(x[i]) >= 5) {
        outputString += "1";
    }
  }
  return outputString; 
};