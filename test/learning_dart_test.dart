import 'package:learning_dart/library.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Awesome awesome;

    setUp(() {
      awesome = Awesome("Karl Marx");
    });

    test('operator tests', () {
      assert(awesome is Awesome);
      assert(awesome is! String);
      assert(1.5 is! int);
      awesome.name = null;
      expect(awesome.name ?? "", equals(""));

      //like Kotlin's with(), or apply
      Awesome superAwesome = Awesome("Ernesto Che Guevara")
      ..name = "Ernesto"
      ..age = 39
      ..why = Why()
        ..why.reason = "Defender of people's struggles across the world"
        ..why.stars = 10;

      expect(superAwesome.age, equals(39));
      expect(superAwesome.why.stars, equals(10));

      /**
       * It's great to know Dart also supports safe nulls :)
       */
      superAwesome.name = null;
      expect(superAwesome.name?.length ?? 0, equals(0));
    });
  });

  group("class operators", (){
    test('alias constructor', (){
      Awesome creedBratton = Awesome.coolBeans("Creed Bratton", 65);
      expect(creedBratton.age, equals(65));
    });

    test("method operator", (){
        Cat felipe = Cat("Felipe", "Black and White");
        Cat princess = Cat("Princess", "Black and White");
        Cat amelia = Cat("Amelia", "Brown and Black");
        List<Cat> familyCats = felipe + [princess];
        expect(familyCats.length, equals(2));

        familyCats = felipe - princess;
        expect(familyCats.length, equals(1));

        familyCats = felipe + [princess, amelia];
        expect(familyCats.length, equals(3));
        expect( felipe * amelia, equals(felipe.name + " " + amelia.name));
    });
  });

}
