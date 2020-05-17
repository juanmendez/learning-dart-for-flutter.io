import 'package:learning_dart/src/language.dart';
import 'package:test/test.dart';

void main() {
  Language language;

  setUp((){
      print("before each within class");
      language = Language(name: "Dart", age: 8);
  });

  /**
   * prints for each test
   * before each within class
   * after each within class
   */
  test("equal test", () {
    expect(language.age, equals(8));
  });

  test("no equals", (){
    language.age = 9;
    expect(language.age, equals(9));
  });

  /**
   * prints for each group test
   * before each within class
   * before each within group
   * after each within group
   * after each within class
   */
  group("setup/teardown inside group", () {
    setUp((){
      print("before each within group");
      language = Language(name: "Dart", age: 8);
    });

    test("equal test", () {
      expect(language.age, equals(8));
    });

    test("no equals", (){
      language.age = 9;
      expect(language.age, equals(9));
    });

    tearDown(() {
      print("after each within group");
    });
  });

  tearDown(() {
    print("after each within class");
  });
}