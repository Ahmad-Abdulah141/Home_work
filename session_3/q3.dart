//3. To-Do List App:
//Create a to-do list program using a List where each item has a description, due date, and
//completion status (as bool). Implement methods to add, remove, and update tasks, including the
//use of for-each loops.

import 'dart:io';

void main() {
  List<Map<String, dynamic>> todoList = [];

  while (true) {
    print("\n Select the process:");
    print("1. Important addition");
    print("2. Remove task");
    print("3. Mission Update");
    print("4. View tasks");
    print("5. Exite");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print("Enter a task description:");
        String description = stdin.readLineSync()!;
        print("Enter due date (YYYY-MM-DD):");
        String dueDate = stdin.readLineSync()!;
        todoList.add({
          'description': description,
          'dueDate': dueDate,
          'isCompleted': false,
        });
        break;
      case '2':
        print("Enter a description of the task to be removed:");
        String description = stdin.readLineSync()!;
        todoList.removeWhere((task) => task['description'] == description);
        break;
      case '3':
        print("Enter a description of the task to be updated:");
        String description = stdin.readLineSync()!;
        for (var task in todoList) {
          if (task['description'] == description) {
            print("Enter the new due date. (YYYY-MM-DD):");
            String newDueDate = stdin.readLineSync()!;
            print("Was the task completed? (Yes/No):");
            String completed = stdin.readLineSync()!;
            task['dueDate'] = newDueDate;
            task['isCompleted'] = completed.toLowerCase() == 'نعم';
            break;
          }
        }
        break;
      case '4':
        print("\n To-do list:");
        if (todoList.isEmpty) {
          print("The list is empty.");
        } else {
          for (var task in todoList) {
            print(
              "- ${task['description']} (due date: ${task['dueDate']}, Completed: ${task['isCompleted']})",
            );
          }
        }
        break;
      case '5':
        return;
      default:
        print("Invalid option.");
    }
  }
}
