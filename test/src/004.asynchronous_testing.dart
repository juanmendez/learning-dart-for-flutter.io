@TestOn('vm') // makes it easy to declare exactly which platforms a test file should run on

import 'package:learning_dart/src/band.dart';
import 'package:test/test.dart';

@Timeout(const Duration(seconds: 30))
void main() {
  group('A group of tests', () {


    test("asynchronous call", () async {
      var bands = await getBandsWithFuture();
      expect(bands.length, equals(15));
    });

    test("deal with future's exception", () async{
      expect( await ()=>getBandsWithFuture(true), throwsException );
    });

    test("streaming", () async{
        await for( Band band in getBandsWithStream()) {
          expect(band, isNotNull);
        }
    });

    test("futures with completion", () async{
      expect(getBandsWithFuture(), completion(isNotNull));
    });
  });
}
