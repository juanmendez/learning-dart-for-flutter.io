import "dart:math";

abstract class Shape {
  num get area; //getter declaration

  //this is like a constructor which is based on a subtype instead
  factory Shape(String type, int dimension) {
    if (type == 'circle') return new Circle(dimension);
    if (type == 'square') return new Square(dimension);
    throw 'Can\'t create $type.';
  }
}

class Circle implements Shape {
  final num radius; //like Java, but not like Kotlin's val
  Circle(this.radius);
  num get area => PI * pow(radius, 2);
}

class Square implements Shape {
  //I like Kotlin's val over this
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = new Circle(2);
  final square = new Square(2);
  print(circle.area);
  print(square.area);

  final circleShape = new Shape('circle',2);
  final squareShape = new Shape('square',3);
  print(circleShape.area);
  print(squareShape.area);
}