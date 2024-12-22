<?php 
/*
Description

Your non-profit company has assigned you the task of calculating some simple statistics on donations. You have an array of 
integers, representing various amounts of donations your company has been given. In particular, you're interested in the median 
value for donations.

The median is the middle number of a sorted list of numbers. If the list is of even length, the 2 middle values are averaged.

Write a function that takes an array of integers as an argument and returns the median of those integers.

Notes:
The sorting step is vital.
Input arrays are non-empty.

Examples
Median of [33,99,100,30,29,50] is 41.5.
Median of [3,2,1] is 2.
*/

function median($a) {
  sort($a);
  
  $length = count($a);
  
  if ($length % 2 !== 0) {
    return $a[floor($length / 2)];
  }
  
  $mid1 = $a[$length / 2];
  $mid2 = $a[($length / 2) - 1];
  
  return ($mid1 + $mid2) / 2;
}
?>