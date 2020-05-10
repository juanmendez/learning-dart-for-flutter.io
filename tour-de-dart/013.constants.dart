// there was a brief explanation about constants in 002.final_constants.dart
void main() {
  final pizza = Pizza(Pizza.BIG_PIZZA, Pizza.PIZZA_TAG);
  print(Pizza.welcome());
}

class Pizza {
  static final BIG_PIZZA = "Your order a pizza that feeds 50 people";
  static final PIZZA_TAG = "pizza_fragment_tag";

  static String welcome() => "Welcome $BIG_PIZZA";

  final String name;
  final String tag;

  Pizza(this.name, this.tag);
}
