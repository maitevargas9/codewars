/*
Description

An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive
Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.

Examples
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"
*/

var isAnagram = function(test, original) {
  let str1 = test.replace(/\s/g, '').toLowerCase();
  let str2 = original.replace(/\s/g, '').toLowerCase();
  if (str1.length !== str2.length) {
    return false;
  }
  str1 = str1.split('').sort().join('');
  str2 = str2.split('').sort().join('');
  return str1 === str2;
};
