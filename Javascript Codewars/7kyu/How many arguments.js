/*
Description

Write a function that returns the number of arguments it received.

args_count() --> 0
args_count('a') --> 1
args_count('a', 'b') --> 2

Create a function called args_count that returns the number of arguments provided
*/

const args_count = (...args) => args.length;
