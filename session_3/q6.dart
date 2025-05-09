//6. Working with Maps - Student Details:
//- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
//and remove entries from the map, printing the map after each operation.
//- Task 2: Iterate over the map and print each key-value pair.

void main() {
  Map<String, dynamic> student = {'name': 'Ahmad', 'age': 20, 'grade': 'A'};
  print("Original map: $student");
  student['major'] = 'Computer Science';
  print("After adding an entry: $student");
  student['age'] = 21;
  print("After updating the entry: $student");
  student.remove('grade');
  print("After removing the entrance: $student");

  print("\n key-value:");
  student.forEach((key, value) {
    print("$key - $value");
  });
}
