void main() {
  //How do you concatenate strings in Dart? Write an example using two variables: firstName and lastName
  String firstName = 'Ahmad';
  String lastName = 'Abdullah';

  String fullName1 = firstName + ' ' + lastName;
  String fullName2 = '$firstName $lastName';

  print(fullName1);
  print(fullName2);
}
