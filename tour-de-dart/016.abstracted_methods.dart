void main() {
  final homoSapiens = HomoSapiens();
  final orangutan = Orangutan();

  assert(homoSapiens is Primate);
  assert(orangutan is Primate);

  print(homoSapiens.intro());
  print(orangutan.intro());
}

/**
 * Use the abstract modifier to define an abstract class—a class that can’t be instantiated.
 * Abstract classes are useful for defining interfaces, often with some implementation.
 * If you want your abstract class to appear to be instantiable, define a factory constructor.
 */
abstract class Primate {
  String intro();
}

class HomoSapiens extends Primate {
  @override
  String intro() {
    return "Homo sapiens is the only extant human species. The name is Latin for 'wise man'";
  }
}

class Orangutan extends Primate {
  @override
  String intro() {
    return "The orangutans are three extant species of great apes native to Indonesia and Malaysia.";
  }
}