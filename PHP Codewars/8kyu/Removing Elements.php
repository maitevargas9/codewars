<?php
/*
Description

Take an array and remove every second element from the array. Always keep the first element and start removing with the next 
element.

Example:
["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]

None of the arrays will be empty, so you don't have to worry about that!
*/

function removeEveryOther($array) {
  return array_filter($array, function($i) { return $i % 2 == 0; }, ARRAY_FILTER_USE_KEY);
}
?>