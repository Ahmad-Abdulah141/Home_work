//5. Class Creation and Dot Operator Usage:
//Create a class with a few properties and methods. Instantiate the class and use the dot operator to
//access and print its properties and methods.

class Dog {
  String name;
  int age;
  Dog(this.name, this.age);
  void bark() {
    print("$name barking!");
  }
}

void main() {
  Dog myDog = Dog("bunduq", 3);
  print("Dog's name: ${myDog.name}");
  print("Dog's age: ${myDog.age}");
  myDog.bark();
}
