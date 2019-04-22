import 'dart:core';

abstract class Animal {
  String family;
  int feetToWalk;

  Animal(this.family, this.feetToWalk);
}

class Human extends Animal {
  String name;
  int age;

  Human(this.name, this.age) : super("hominidae", 2);

  @override
  String toString() => name;
}

class Cat extends Animal {
  String name;
  String mew;

  Cat(this.name, this.mew) : super("feline", 4);

  @override
  String toString() => name;
}

// generic class
class Printer<T extends Animal> {
  String print(T animal) {
    return "hello dear $animal from the ${animal.family} family";
  }
}

// generic string
String feetToWalk<T extends Animal>(T animal) {
  return "this animal needs ${animal.feetToWalk} feet to walk";
}
