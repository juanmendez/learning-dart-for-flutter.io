abstract class Cat{
  String name;
  int age;
}

abstract class Size{
  int weight;
  SizeType sizeType;
}

abstract class Color {
  String colorName;
}

enum SizeType{
  xsmall, small, medium, large
}

/**
 * AwesomeCat can't have a constructor other than the default one.
 */
class AwesomeCat extends Cat with Size, Color {
}
