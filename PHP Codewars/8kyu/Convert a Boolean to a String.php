<?php
/* 
Description

Implement a function which convert the given boolean value into its string representation.

Note: Only valid inputs will be given.
*/

function booleanToString(bool $b): string {
  return var_export($b, true);
}
?>
