import "dart:math";

class Rectangle {
  //we can't use privates, everything is public?
  int width;
  int height;
  Point origin;

  //Java supports overloading with multiple constructors
  //Similar to Kotlin, Dart can include default values through an object
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() {
    return "Rectangle{width: $width, height: $height, origin: ${origin.x} ${origin.y} }";
  }
}

main() {
  //Like Java new is used. I wish it did more like Kotlin var rectangle = Rectangle()
  //so now its one argument served as an object.
  print(new Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(new Rectangle(origin: const Point(10, 10)));
  print(new Rectangle(width: 200));
  print(new Rectangle());
}
