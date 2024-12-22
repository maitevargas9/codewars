<?php 
/*
Description

Very simple, given a number (integer / decimal / both depending on the language), find its opposite (additive inverse).

Examples:
1: -1
14: -14
-34: 34
*/

function opposite(int $n): int {
  return $n * (-1);
}
?>