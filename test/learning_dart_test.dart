import 'package:test/test.dart';
import 'package:learning_dart/awesome_library.dart';

void main() {
  group('A group of tests', () {
    AwesomeCat awesomeCat;

    setUp(() {
      awesomeCat = new AwesomeCat()
        ..colorName = "Felipe"
        ..sizeType = SizeType.medium
        ..age = 8
        ..weight = 11
        ..colorName = "brown";
    });

    test('First Test', () {
      expect(awesomeCat.colorName, "brown");
    });
  });
}
