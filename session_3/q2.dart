//2. Grocery List Manager:
//Implement a program that uses a List to store grocery items. It should allow adding, removing, and
//displaying items. Use functions with return types and optional/named parameters. Make sure to
//handle possible null values.

import 'dart:io';

void main() {
  List<String> groceryList = [];

  while (true) {
    print("\n Select the currency :");
    print("1.Milk");
    print("2.canned food");
    print("3.flour");
    print("4.exit");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print(":");
        String item = stdin.readLineSync()!;
        groceryList.add(item);
        break;
      case '2':
        print("Enter the item you want to remove:");
        String item = stdin.readLineSync()!;
        groceryList.remove(item);
        break;
      case '3':
        print("\n grocery list:");
        if (groceryList.isEmpty) {
          print("Empty list.");
        } else {
          for (String item in groceryList) {
            print("- $item");
          }
        }
        break;
      case '4':
        return;
      default:
        print("Invalid selection.");
    }
  }
}
