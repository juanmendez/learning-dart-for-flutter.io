import 'dart:math';

void main() {
  assert( "olleh" == "hello".reverse());
  print("hello".encrypt());

}

/**
 * way similar to Kotlin, where extensions can also be part of `Object`s
 * as well as global functions. Here is very similar, but `this`` is required
 * while making reference of current string's length for instance.
 */
extension StringUtil on String {
  String reverse() {
      var i = this.length;
      var reversedWord = "";
      while(--i >= 0) {
        reversedWord += this[i];
      }

      return reversedWord;
  }

  String encrypt() {
    var i = this.length;
    var encrypted = "";
    while(--i >= 0) {
      encrypted += Random().nextDouble().toString();
    }

    return encrypted;
  }
}