void main() {
  final homoSapiens = HomoSapiens();
  assert(homoSapiens is Primate);
  assert(homoSapiens is Mammal);
  print(homoSapiens.intro());
  print(homoSapiens.description);

}

/**
 * Use the abstract modifier to define an abstract class—a class that can’t be instantiated.
 * Abstract classes are useful for defining interfaces, often with some implementation.
 * If you want your abstract class to appear to be instantiable, define a factory constructor.
 */
abstract class Primate {
  String intro();
}

abstract class Mammal {
  final description = "";
}

class HomoSapiens extends Primate with Mammal {
  // what a great way to concatenate without using .plus() or + like in Kotlin
  @override
  get description =>
      "Mammals are vertebrate animals constituting the class Mammalia,"
      "and characterized by the presence of mammary glands"
      "which in females produce milk for feeding their young,";

  @override
  String intro() {
    return "Homo sapiens is the only extant human species. The name is Latin for 'wise man'";
  }
}