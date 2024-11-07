/*
Description

The King organizes the jousting. You are a young human lady and your fiancé is an ogre. Today is his anniversary and he would 
love to visit the tournament, but it's forbidden for ogres to visit the Kingdom. So you decided to go there, to paint the exact 
moments of clash of cavalry and to present these paintings to your beloved.

You are given the array / tuple (listField) of two strings of equal length. Each the string contains "$->" and "<-P"(knight with 
lance) respectively. The knights move towards each other and they can only take simultaneous steps of length vKnightLeft and 
vKnightRight. When the index of ">" is equal or more than the index of "<", return the array / tuple representing the knights' 
positions.

Some examples of the collision:
["$->  ",  
"  <-P"]     
["   $-> ",
"    <-P"]
["   $-> ",
"   <-P "]

Notes:
"The knight "$->" always starts in the position 0 of the first string;
"The knight "<-P" always starts in the last position of the second string;
Velocity of knights can be different from 0 to 3 inclusive;
Sometimes the collision can happen immediately;
Sometimes there is no an immediate collision and velocitity of both knights is 0. At this case return an original array / tuple.

Example 1:
given
listField = ["$->    ",
             "    <-P"]
             
vKnightLeft = 1
vKnightRight = 1  
return
 [" $->   ", 
  "   <-P "]

Example 2:
given
listField = ["$->",
             "<-P"]
             
vKnightLeft = 1
vKnightRight = 1  
return
 ["$->", 
  "<-P"]

If you like this kata, check out the another one: Kingdoms Ep2: The curse (simplified)
create the issue if you don's see the imageOne of your beautiful paintings for your Ogre
*/

export function joust(
  listField: string[],
  vKnightLeft: number,
  vKnightRight: number
): string[] {
  if (vKnightLeft + vKnightRight === 0) {
    return listField;
  }

  const field = listField[0].length;
  let leftIndex = listField[0].indexOf(">");
  let rightIndex = listField[1].indexOf("<");

  while (rightIndex > leftIndex) {
    leftIndex += vKnightLeft;
    rightIndex -= vKnightRight;
  }

  const left =
    " ".repeat(leftIndex - 2) + "$->" + " ".repeat(field - (leftIndex + 1));
  const right =
    " ".repeat(rightIndex) + "<-P" + " ".repeat(field - (rightIndex + 3));

  return [left, right];
}
