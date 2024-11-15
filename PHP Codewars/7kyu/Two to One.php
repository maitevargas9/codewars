<?php 
/*
Description

Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string (alphabetical ascending), 
the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

Examples:
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"
a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
*/

function longest($a, $b) {
  $combined = $a . $b;
  $uniqueChars = array_unique(str_split($combined));
  sort($uniqueChars);
  return implode('', $uniqueChars);
}
?>