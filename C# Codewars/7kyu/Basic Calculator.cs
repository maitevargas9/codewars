/*
Description

Write a function called calculate that takes 3 values. The first and third values are numbers. The second value is a 
character. If the character is "+" , "-", "*", or "/", the function will return the result of the corresponding 
mathematical function on the two numbers. If the string is not one of the specified characters, the function should 
return null (throw an ArgumentException in C#).

calculate(2,"+", 4); //Should return 6
calculate(6,"-", 1.5); //Should return 4.5
calculate(-4,"*", 8); //Should return -32
calculate(49,"/", -7); //Should return -7
calculate(8,"m", 2); //Should return null
calculate(4,"/",0) //should return null

Keep in mind, you cannot divide by zero. If an attempt to divide by zero is made, return null (throw an 
ArgumentException in C#)/(None in Python).
*/

using System;

public static class Calculator {
  public static double Execute(double num1, char op, double num2) {
    switch (op) {
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        if (num2 == 0) throw new ArgumentException("Cannot divide by zero.");
        return num1 / num2;
      default:
        throw new ArgumentException("Invalid operator.");
    }
  }
}