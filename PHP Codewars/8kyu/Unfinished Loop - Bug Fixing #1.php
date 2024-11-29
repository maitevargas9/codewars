<?php 
/*
Description

Unfinished Loop - Bug Fixing #1

Oh no, Timmy's created an infinite loop! Help Timmy find and fix the bug in his unfinished for loop!

function createArray($number) {
  $newArray = array();
  
  for($count = 1; $count <= $number;) {
    $newArray[] = $count;
  }
  
  return $newArray;
}
*/

function createArray($number) {
  $newArray = array();
  
  for($count = 1; $count <= $number; $count++) {
    $newArray[] = $count;
  }
  
  return $newArray;
}
?>