/*
Description

RoboScript #2 - Implement the RS1 Specification

Disclaimer
The story presented in this Kata Series is purely fictional; any resemblance to actual programming languages, 
products, organisations or people should be treated as purely coincidental.

About this Kata Series
This Kata Series is based on a fictional story about a computer scientist and engineer who owns a firm that sells a 
toy robot called MyRobot which can interpret its own (esoteric) programming language called RoboScript. Naturally, 
this Kata Series deals with the software side of things (I'm afraid Codewars cannot test your ability to build a 
physical robot!).

Story
Now that you've built your own code editor for RoboScript with appropriate syntax highlighting to make it look like 
serious code, it's time to properly implement RoboScript so that our MyRobots can execute any RoboScript provided and
move according to the will of our customers. Since this is the first version of RoboScript, let's call our 
specification RS1 (like how the newest specification for JavaScript is called ES6 :p)

Task
Write an interpreter for RS1 called execute() which accepts 1 required argument code, the RS1 program to be executed. 
The interpreter should return a string representation of the smallest 2D grid containing the full path that the 
MyRobot has walked on (explained in more detail later).
Initially, the robot starts at the middle of a 1x1 grid. Everywhere the robot walks it will leave a path "*". If the 
robot has not been at a particular point on the grid then that point will be represented by a whitespace character " ". 
So if the RS1 program passed in to execute() is empty, then:
""  -->  "*"
The robot understands 3 major commands:
F - Move forward by 1 step in the direction that it is currently pointing. Initially, the robot faces to the right.
L - Turn "left" (i.e. rotate 90 degrees anticlockwise)
R - Turn "right" (i.e. rotate 90 degrees clockwise)
As the robot moves forward, if there is not enough space in the grid, the grid should expand accordingly. So:
"FFFFF"  -->  "******"
As you will notice, 5 F commands in a row should cause your interpreter to return a string containing 6 "*"s in a row. 
This is because initially, your robot is standing at the middle of the 1x1 grid facing right. It leaves a mark on the 
spot it is standing on, hence the first "*". Upon the first command, the robot moves 1 unit to the right. Since the 
1x1 grid is not large enough, your interpreter should expand the grid 1 unit to the right. The robot then leaves a 
mark on its newly arrived destination hence the second "*". As this process is repeated 4 more times, the grid expands 
4 more units to the right and the robot keeps leaving a mark on its newly arrived destination so by the time the 
entire program is executed, 6 "squares" have been marked "*" from left to right.
Each row in your grid must be separated from the next by a CRLF (\r\n). Let's look at another example:
"FFFFFLFFFFFLFFFFFLFFFFFL"  -->  "******\r\n*    *\r\n*    *\r\n*    *\r\n*    *\r\n******"
So the grid will look like this:
******
*    *
*    *
*    *
*    *
******
The robot moves 5 units to the right, then turns left, then moves 5 units upwards, then turns left again, then moves 5 
units to the left, then turns left again and moves 5 units downwards, returning to the starting point before turning 
left one final time. Note that the marks do not disappear no matter how many times the robot steps on them, e.g. the 
starting point is still marked "*" despite the robot having stepped on it twice (initially and on the last step).
Another example:
"LFFFFFRFFFRFFFRFFFFFFF"  -->  "    ****\r\n    *  *\r\n    *  *\r\n********\r\n    *   \r\n    *   "
So the grid will look like this:
    ****
    *  *
    *  *
********
    *
    *
Initially the robot turns left to face upwards, then moves upwards 5 squares, then turns right and moves 3 squares, 
then turns right again (to face downwards) and move 3 squares, then finally turns right again and moves 7 squares.
Since you've realised that it is probably quite inefficient to repeat certain commands over and over again by 
repeating the characters (especially the F command - what if you want to move forwards 20 steps?), you decide to 
allow a shorthand notation in the RS1 specification which allows your customers to postfix a non-negative integer 
onto a command to specify how many times an instruction is to be executed:
Fn - Execute the F command n times (NOTE: n may be more than 1 digit long!)
Ln - Execute L n times
Rn - Execute R n times
So the example directly above can also be written as:
"LF5RF3RF3RF7"
*/

function execute(code) {
  const tokens = code.match(/([FLR])(\d*)/g) || [];

  const dirs = [
    [1, 0],
    [0, -1],
    [-1, 0],
    [0, 1]
  ];

  let x = 0,
    y = 0;
  let dir = 0;
  const visited = new Set();
  visited.add(`${x},${y}`);

  for (const token of tokens) {
    const cmd = token[0];
    const count = token.length > 1 ? parseInt(token.slice(1)) : 1;

    for (let i = 0; i < count; i++) {
      if (cmd === "F") {
        x += dirs[dir][0];
        y += dirs[dir][1];
        visited.add(`${x},${y}`);
      } else if (cmd === "L") {
        dir = (dir + 1) % 4;
      } else if (cmd === "R") {
        dir = (dir + 3) % 4;
      }
    }
  }

  let minX = Infinity,
    maxX = -Infinity,
    minY = Infinity,
    maxY = -Infinity;
  for (const pos of visited) {
    const [vx, vy] = pos.split(",").map(Number);
    if (vx < minX) {
      minX = vx;
    }
    if (vx > maxX) {
      maxX = vx;
    }
    if (vy < minY) {
      minY = vy;
    }
    if (vy > maxY) {
      maxY = vy;
    }
  }

  const rows = [];
  for (let row = minY; row <= maxY; row++) {
    let line = "";
    for (let col = minX; col <= maxX; col++) {
      line += visited.has(`${col},${row}`) ? "*" : " ";
    }
    rows.push(line);
  }

  return rows.join("\r\n");
}
