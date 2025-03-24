// Basic Arithmetic Calculator
// Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
// Handle cases where division by zero might occur.
double basicCalculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError("Error: Division by zero.");
      }
      return num1 / num2;
    default:
      throw ArgumentError("Error: Invalid operator.");
  }
}
