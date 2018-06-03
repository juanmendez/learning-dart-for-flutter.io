import "dart:math";

//supports abstract classes
abstract class Shape {
  num get area; //getter declaration
}

abstract class Color {
  num get color;
}

/**
 * There are no interfaces; instead, there are abstract classes which can serve the same purpose.
 * Since Dart supports multiple inheritance, then Shape and Color can be considered as interfaces
 */
class Circle implements Shape, Color {
  final num mRadius; //like Java, but not like Kotlin's val
  final num mColor;

  Circle(this.mRadius, this.mColor);
  num get area => PI * pow(mRadius, 2);

  @override
  num get color => mColor;

  @override
  String toString() {
    return 'Circle{radius: $mRadius, color: $color, area: $area }';
  }

  //kotlin: fun onMouseClick( f:(Shape)->Unit )
  void onMouseClick(void f(Shape s)){
    f(this);
  }
}

main() {
  //ok, so Kotlin's val is final instead, no need for var
  final circle = new Circle(2, 0xFF3600 );
  print(circle);

  //onMouseClick accepts a function, which we return one value
  circle.onMouseClick((Shape s){
    print("${s.toString()} is pressed");
  });
}