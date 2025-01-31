<?php 
/*
Description

Remove or add a exclamation mark at the end of words of the sentence. Words are separated by spaces in the sentence. 
That is: If a word has one ! at the end, remove it; If a word has no ! at the end, add a ! to the end; If there are 
more than one ! at the end of word, keep it.

Examples
"Hi!"            ---> "Hi"
"Hi! Hi!"        ---> "Hi Hi"
"Hi! Hi"         ---> "Hi Hi!"
"Hi! Hi Hi!!"    ---> "Hi Hi! Hi!!"
"!Hi! !Hi !Hi!!" ---> "!Hi !Hi! !Hi!!"
*/

function remove(string $s): string {
  return implode(' ', array_map(function($word) {
      if (substr($word, -1) !== '!') {
          return $word . '!';
      } elseif (preg_match('/!!$/', $word)) {
          return $word;
      } else {
          return substr($word, 0, -1);
      }
  }, explode(' ', $s)));
}
?>