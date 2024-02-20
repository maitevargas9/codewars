/*
Description

You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

Note: For 4 or more names, the number in "and 2 others" simply increases.
*/

export const likes = (a: string[]): string => {
  let result = '';
  if (a.length === 0) {
    result = 'no one likes this';
  }
  else if (a.length === 1) {
    result = `${a[0]} likes this`;
  }
  else if (a.length === 2) {
    result = `${a[0]} and ${a[1]} like this`;
  }
  else if (a.length === 3) {
    result = `${a[0]}, ${a[1]} and ${a[2]} like this`;
  }
  else if (a.length >= 4) {
    result = `${a[0]}, ${a[1]} and ${a.length - 2} others like this`;
  }
  return result;
}