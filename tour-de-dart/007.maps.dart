main() {
  // I like colons rather than `to` used in Kotlin
  var gifts = {
    // Key:    Value
    "first": "partridge",
    "second": "turtledoves",
    "fifth": "golden rings"
  };

  var nobleGases = {
    2: "helium",
    10: "neon",
    18: "argon",
  };

  // I remembered still closures in Dart :)
  gifts.forEach((key, value) => {print("$key : $value")});

  if(nobleGases.containsKey(2)) {
    print("contains ${nobleGases[2]}");
  }

  /**
   * you can use also
   * var map = Map();
   * var map = new Map();
   *
   * `new` is now optional, that's so great!
   */

  // here is an immutable map just like it works in 004.plain_lists.dart
  final constantMap = const {
    "first": "partridge",
    "second": "turtledoves",
    "fifth": "golden rings"
  };
}
