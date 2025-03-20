//4. Maps, Functions & User Input
//Create a Dart program that:
//- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
//- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
//- If the fruit is not found, return -1.
//Call the function inside `main()` and print the result.

import 'dart:io';

Map<String, int> fruitPrices = {
  "apple": 50,
  "banana": 30,
  "orange": 40,
  "grape": 60,
};
int getPrice(String fruitName) {
  if (fruitPrices.containsKey(fruitName)) {
    return fruitPrices[fruitName]!;
  } else {
    return -1;
  }
}

void main() {
  print("Enter fruit name:");
  String fruitName = stdin.readLineSync() ?? "";
  int price = getPrice(fruitName.toLowerCase());
  if (price != -1) {
    print("$fruitName price: $price");
  } else {
    print("$fruitName not found.");
  }
  print("Apple price: ${getPrice("apple")}");
  print("Mango price: ${getPrice("mango")}");
}
