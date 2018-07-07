import 'package:learning_dart/library.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Awesome awesome;

    setUp(() {
      awesome = Awesome();
    });

    test('operator tests', () {
      assert(awesome is Awesome);
      assert(awesome is! String);
      assert(1.5 is! int);
      expect(awesome.name ?? "", equals(""));

      //like Kotlin's with(), or apply
      Awesome superAwesome = Awesome()
      ..name = "Kotlin"
      ..age = 6
      ..why = Why()
        ..why.reason = "cause it's so cool"
        ..why.stars = 10;

      expect(superAwesome.age, equals(6));
      expect(superAwesome.why.stars, equals(10));
    });
  });
}
