import 'package:learning_dart/src/language.dart';
import 'package:test/test.dart';

void main() {
  group("latest two languages learned", () {
    test("equal test", () {
      final language = Language(name: "Dart", age: 8);
      final age = language.age;
      expect(age, equals(8));
    });

    test("no equals", (){
      final language = Language(name: "Kotlin", age: 9);
      final age = language.age;
      expect(age, isNot(8));
    });

    test("like in junit 5, assertAll", (){
      final language = Language(name: "Kotlin", age: 9);
      final age = language.age;

      expect(age, allOf([
        equals(9),
        greaterThan(8),
        lessThan(10)
      ]));
    });
  });
}