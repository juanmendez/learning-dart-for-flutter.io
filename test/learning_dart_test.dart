import 'package:test/test.dart';

import '../main/animal_tree.dart';

void main() {
  group("animal test", () {
    test("test inheritance", () {
      var printer = Printer();

      Human paco = Human("Paco", 35);
      assert(paco is Animal);
      print(printer.print(paco));
      print(feetToWalk(paco));

      Cat felipe = Cat("Felipe", "mewwwwww");
      print(printer.print(felipe));
      print(feetToWalk(felipe));
    }); // end of test
  });
}
