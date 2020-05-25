import 'package:learning_dart/src/band.dart';
import 'package:learning_dart/src/bandservice.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/**
 * I show how to generate a mocked class quick using live template from Jetbrains
 * @see https://twitter.com/JuanMendezDev/status/1264742485391298566
 */
class MockedBandService extends Mock implements BandService {}

void main() {
  group('A group of tests', () {
    BandService bandService;
    setUp(() {
      bandService = MockedBandService();
    });

    test("making user of return method", () {
      when(bandService.welcome()).thenReturn("hello");
      expect(bandService.welcome(), equals("hello"));

      when(bandService.tellUsWHoYouAre(any)).thenReturn("hello");
      expect(bandService.tellUsWHoYouAre("you"), "hello");

      when(bandService.tellUsWHoYouAre(argThat(equals("expected"))))
          .thenReturn("hola");
      expect(bandService.tellUsWHoYouAre("expected"), "hola");
    });

    test("making use of thenAnswer", () {
      when(bandService.tellUsWHoYouAre(any)).thenAnswer((args){
        final name = args.positionalArguments[0];
          return "welcome $name";
      });

      expect(bandService.tellUsWHoYouAre("Kotlin"), "welcome Kotlin");
    });

    test("stubbing with future", () async {
      when(bandService.getBandsWithFuture()).thenAnswer((args) {
        final bands = List<Band>();

        return Future.value(bands);
      });

      expect(await bandService.getBandsWithFuture(), equals(List<Band>()));
    });
  });
}
