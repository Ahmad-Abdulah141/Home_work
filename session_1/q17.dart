void main() {
  //If you need a variable that can hold any type of value and may change during execution, which data type would you use? Write a code example to show this.
  dynamic myVariable;
  myVariable = 10;
  print('Value: $myVariable, Type: ${myVariable.runtimeType}');
  myVariable = "Hello, Dart!";
  print('Value: $myVariable, Type: ${myVariable.runtimeType}');
  myVariable = true;
  print('Value: $myVariable, Type: ${myVariable.runtimeType}');
  myVariable = [1, 2, 3, 4, 5];
  print('Value: $myVariable, Type: ${myVariable.runtimeType}');
}
