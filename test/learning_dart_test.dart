import 'package:test/test.dart';
import '../example/learning_dart_example.dart';

@Timeout(const Duration(seconds: 30))
void main() {

  int tests = 0;

  //@Before here or inside group as well
  setUp((){
    tests++;
  });

  group('A group of tests', () {
    setUp((){
        print("group.setUp()");
    });

    //@Test `First Test`()
    test('First Test', (){
        expect(getGreeting(), equals("Hello"));
        print("number of tests $tests");
    });

    //@see https://www.dartlang.org/tutorials/language/futures
    //@Test `Check result`
    test("asynchronous call", () async {
      var bands = await getBands();
      expect(bands.length, equals(15));

      print("number of tests $tests");
    });
  });

  group("how to handle exceptions", (){

    //ensure your errors are called within a lambda instead
    test("expect an exception", (){
        expect( ()=>pingException(), throwsException );
        print("number of tests $tests");
    });

    test("deal with future's exception", () async{
        expect( await ()=>getBands(true), throwsException );
        print("number of tests $tests");
    });
  });

  tearDown((){
      print( "teardown()");
  });
}
