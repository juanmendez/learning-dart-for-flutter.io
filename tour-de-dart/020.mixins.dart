void main() {
  final homoSapiens = HomoSapiens();
  assert(homoSapiens is Primate);
  assert(homoSapiens is Mammal);
  print(homoSapiens.intro);
  print(homoSapiens.description);

}

/**
 * Use the abstract modifier to define an abstract class—a class that can’t be instantiated.
 * Abstract classes are useful for defining interfaces, often with some implementation.
 * If you want your abstract class to appear to be instantiable, define a factory constructor.
 */
mixin Primate {
  final String intro = "some kind of primate";
}

mixin Mammal {
  final String description = "some kind of mammal";
}

// can't extend to Primate or Mammal, so we attach mixins with `with`
// mixins are a way to apply composition over inheritance
// in Kotlin we can do something similar through the use `implementation by delegation`
// @see https://kotlinlang.org/docs/reference/delegation.html#implementation-by-delegation
class HomoSapiens with Primate, Mammal {} // empty classes require brackets