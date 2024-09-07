/*
Description

As hex values can include letters A through to F, certain English words can be spelled out, such as CAFE, BEEF, or FACADE. This 
vocabulary can be extended by using numbers to represent other letters, such as 5EAF00D, or DEC0DE5.

Given a string, your task is to return the decimal sum of all words in the string that can be interpreted as such hex values.

Example
Working with the string "BAG OF BEES":
"BAG"  =  0, as it is not a valid hex value  
"OF"   =  0F   =  15
"BEES" =  BEE5 =  48869
So the result is the sum of these: 48884 (0 + 15 + 48869)

Notes
Inputs are all uppercase and contain no punctuation
0 can be substituted for O
5 can be substituted for S
*/

export function hexWordSum(string: string): number {
  return string
    .replace(/s/gi, "5")
    .replace(/o/gi, "0")
    .split(" ")
    .map((el) => Number("0x" + el))
    .filter((el) => !Number.isNaN(el))
    .reduce((acc, num) => acc + num, 0);
}
