import 'package:test/test.dart';
import '../example/learning_dart_example.dart';

@Timeout(const Duration(seconds: 30))
void main() {
  var artists = Map<String,List<String>>();

  group('A group of tests', () {
    setUp((){
        print("group.setUp()");
    });

    //@see https://www.dartlang.org/tutorials/language/futures
    //@Test `Check result`
    test("asynchronous call", () async {
      var bands = await getBands();

      bands.forEach((band){
         if(artists[band.name] == null){
             artists[band.name] = List<String>();
         }
         artists[band.name].add(band.album);
      });

      expect(artists["Bon Jovi"].length, equals(2));
    });
  });
}
