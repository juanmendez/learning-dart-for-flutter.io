// there was a brief explanation about constants in 002.final_constants.dart
void main() {
  final cheeseBurger = Burger("Cheese Burger");
  final macCheeseBurger = Burger("Cheese Burger");

  assert(cheeseBurger.hashCode == macCheeseBurger.hashCode);
}

class Burger {
  final String fancyName;

  static final collections = <String, Burger>{};

  // this is an internal constructor..
  Burger._internal(this.fancyName);

  // this is a shadow constructor, it internally invokes the internal constructor
  // only if, the intended instance is not found under its map by key value
  factory Burger(String name) {
    return collections.putIfAbsent(name, () => Burger._internal(name));
  }
}
