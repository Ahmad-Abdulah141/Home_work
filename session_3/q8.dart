//8. Range Checker Program:
//Write a Dart program that checks if a number is within a specified range using logical operators and
//prints the result.

import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  int min = 10;
  int max = 50;
  if (number >= min && number <= max) {
    print("The number is within the range.[$min, $max].");
  } else {
    print("The number is not within the range.[$min, $max].");
  }
}
