void main() {
  //Write code that declares a bool variable called isLoggedIn and assigns it a value of false. Then, change the value to true and print the result.

  bool isActive0 = false;
  bool isPasswordCorrect0 = true;
  bool sLoggedIn0 = isPasswordCorrect0 && isActive0;

  print(sLoggedIn0);

  bool isActive = true;
  bool isPasswordCorrect = true;
  bool sLoggedIn = isPasswordCorrect && isActive;

  print(sLoggedIn);
}
