import 'package:learning_dart/src/language.dart';
import 'package:test/test.dart';

void main() {
  test("handling exceptions in tests", (){
      expect(()=>Language(name:"", age: 8), throwsException);
  });


  test('.parse() fails on invalid input', () {
    expect(() => int.parse('X'), throwsFormatException);
  });

}