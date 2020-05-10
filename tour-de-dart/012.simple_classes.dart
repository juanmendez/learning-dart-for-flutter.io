void main() {
  final p = Person(name: "Peter", age: 100);
  print("person $p");
  print("the type of p is ${p.runtimeType}");

  final extendedPerson = ExtendedPerson(name: "Peter", age: 9, color: "Red");
  print(extendedPerson);
  print("the type of extendedPerson is ${extendedPerson.runtimeType}");

  final solidPerson = SolidPerson(name: "Piotr", age: 12);
  print(solidPerson);

  if (solidPerson is! Person) {
    print("solidPerson is not of type Person");
  }

  if (extendedPerson is Person) {
    print("extendedPerson is also of type Person");
  }

  final point = Point(0, 0);
  assert(point.x == 0);
  assert(point.y == 0);

  final originPoint = Point.origin();
  print(originPoint);
  var privatePoint = PointCoorsPrivate(0, 0);
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  @override
  String toString() => "$name $age";
}

class ExtendedPerson extends Person {
  String? color;

  // constructor, invoking super()
  ExtendedPerson({String? name, int? age, this.color}) : super(name: name, age: age);
}

/**
 * using null-safety we are required to define default values.
 * Otherwise, there are lint issues.
 */
class SolidPerson {
  final String name;
  final int age;

  const SolidPerson({this.name = "", this.age = 0});
}

class Point {
  num x = 0, y = 0;

  Point(this.x, this.y);

  // Named constructor, used for multiple ways to create instances giving a lot of clarity
  // see how we can redirect to original constructor,
  // in the same way we can use super(....) to do the same..

  // Jetbrains shortcut to generate: command + N, named constructor
  Point.origin() : this(4, 4);

  @override
  String toString() => "point $x, $y";
}

class PointCoorsPrivate {
  num _x, _y;

  PointCoorsPrivate(this._x, this._y) {
    printCoors();
  }

  void printCoors() {
    print("$_x, $_y");
  }
}
