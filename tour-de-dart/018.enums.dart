void main() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

}

/**
 * There are no indications we can use enums as objects with given arguments
 * which is found in many languages.. Here enums are only empty objects
 */
enum Color {
  red, green, blue
}
