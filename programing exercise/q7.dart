// Reverse a String
// Write a function that takes a string as input and returns the string reversed.
// Example:
// reverseString('hello') -> 'olleh'

String reverseString(String str) {
  return str.split('').reversed.join('');
}
