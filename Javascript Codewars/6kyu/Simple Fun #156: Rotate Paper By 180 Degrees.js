/*
Description

Task
You are given a digital number written down on a sheet of paper.
Your task is to figure out if you rotate the given sheet of paper 
by 180 degrees would the number still look exactly the same.

Example
For number = "1", the result should be false
For number = "29562", the result should be true.
For number = "77", the result should be false.

Input/Output
[input] string number
sequence of digital digits given as a string.
[output] a boolean value
true if you rotate the given sheet of paper by 180 degrees then the number still look exactly the same. 
false otherwise.
*/

function rotatePaper(number) {
  return /[1347]/.test(number)
    ? false
    : number
        .replace(/[69]/g, (e) => (e === "6" ? "9" : "6"))
        .split("")
        .reverse()
        .join("") === number;
}
