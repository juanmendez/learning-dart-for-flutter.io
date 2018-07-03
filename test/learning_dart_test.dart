import 'package:test/test.dart';
import '../example/learning_dart_example.dart';

void main() {


  group('Function var', () {

    test("passing a method as a param", () {
       expect( greatestBand().name, equals("Led Zeppelin"));
       expect( checkBandsName(bandF:greatestBand, bandName: "Led Zeppelin"), equals(true));
    });

    test( "passing anonymous function", (){
      var b = Band(name: "Deep Purple", album: "Led Zeppelin I", year: 1968);
      expect( checkBandsName( bandF:()=>b, bandName: "Aerosmith"), equals(false));
    });
  });
}
