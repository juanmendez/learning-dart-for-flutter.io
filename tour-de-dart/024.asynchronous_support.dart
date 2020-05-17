/**
 * When you need the result of a completed Future, you have two options:
 * Use async and await.
 * Use the Future API, as described in the library tour.
 */
void main() async {
  print("${await checkVersion()}");

  // the future api is non blocking whereas await blocks..
  // second line runs 3 seconds after...
  print("we waited ${await printVersion()}");
  printVersion().then((value) => print(value));
}

Future<String> printVersion() async {
  var version = await checkVersion();
  return Future.value("hello $version");
}

Future<String> checkVersion() async {
  return "1.0.0";
}
