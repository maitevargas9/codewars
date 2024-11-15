<?php 
/*
Description

Write a function which calculates the average of the numbers in a given array.

Note: Empty arrays should return 0.
*/

function find_average($array): float {
  if (count($array) === 0) {
    return 0;
  }
  $sum = array_sum($array);
  return $sum / count($array);
}
?>