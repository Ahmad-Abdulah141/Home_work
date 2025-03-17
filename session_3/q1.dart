//1. Basic Calculator:
//Create a Dart program that takes two numbers as input and performs addition, subtraction,
//multiplication, and division using variables, arithmetic operators, and functions. Also, include
//optional parameters for different operations (e.g., addition of multiple numbers).

import 'dart:io';

void main() {
  print("enter number 1:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("enter number 2:");
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double quotient = num1 / num2;

  print("total : $sum");
  print("Difference: $difference");
  print("Result: $product");
  print("Division: $quotient");
}
