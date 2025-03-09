void main() {
  //What is the difference between var and dynamic in Dart? Provide an example of each.
  // var in Dart
  var number = 10; // number is inferred as int
  // number = "Hello"; // Uncommenting this will cause a compile-time error

  // dynamic in Dart
  dynamic value = 10; // value is initially an int
  value = "Hello"; // This is allowed, as value can change types

  print("Number: $number");
  print("Value: $value");
}
