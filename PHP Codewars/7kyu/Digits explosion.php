<?php 
/*
Description

Given a string made of digits [0-9], return a string where each digit is repeated a number of times equals to its 
value.

Examples
"312" should return "333122"
"102269" should return "12222666666999999999"
*/

function digits_explode(string $s): string {
  $result = '';

  for ($i = 0; $i < strlen($s); $i++) {
    $digit = intval($s[$i]);
    $result .= str_repeat($s[$i], $digit);
  }

  return $result;
}
?>