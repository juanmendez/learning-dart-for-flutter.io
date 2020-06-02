import 'package:learning_dart/src/band.dart';
import 'package:learning_dart/src/bandservice.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/**
 * I show how to generate a mocked class quick using live template from Jetbrains
 * @see https://twitter.com/JuanMendezDev/status/1264742485391298566
 */
class MockedBandService extends Mock implements BandService {}
class FakeBandService extends Fake implements BandService {
  @override
  String tellUsWHoYouAre(String you) => "Bienvenido $you";

  @override
  Future<List<Band>> getBandsWithFuture([bool expectException = false]) async {
    return Future.value([]);
  }
}

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
      when(bandService.tellUsWHoYouAre(any)).thenAnswer((args) {
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
      verifyNever(bandService.tellUsWHoYouAre(any));
    });

    test("capturing arguments", () async {
      when(bandService.tellUsWHoYouAre(captureAny)).thenAnswer((args) {
        final name = args.positionalArguments[0];
        return "hello $name";
      });

      bandService.tellUsWHoYouAre("George Floyd");
      bandService.tellUsWHoYouAre("R.I.P.");

      var captor = verify(bandService.tellUsWHoYouAre(captureAny)).captured;
      expect(captor.first, equals("George Floyd"));
      expect(captor.elementAt(1), equals("R.I.P."));
      expect(captor, ["George Floyd", "R.I.P."]);
    });

    test("faking instead of stubbing", () async {
        final bandService = FakeBandService();
        expect(bandService.tellUsWHoYouAre("Juan"), "Bienvenido Juan");
        expect(await bandService.getBandsWithFuture(), equals([]));
    });
  });
}
