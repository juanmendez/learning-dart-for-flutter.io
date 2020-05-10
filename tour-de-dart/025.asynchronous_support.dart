/**
 * This exercise shows how to work with only futures.
 * What's cool about futures is they can be chained with other futures
 * Futures are very similar to Kotlin Coroutine Flows.
 * I personally like how they easily can chain
 */
void main() async {
  final hello = await greetUser();
  print(hello);

  final goodBye = await sayGoodbye();
  print(goodBye);
}

Future<String> fetchUsername() async {
  return Future.value("Jacinto");
}

Future<String> logoutUser() async {
  return Future.value("Jacinto");
}

// Part 1
String addHello(String name) => "Hello $name";

// Part 2
//You can call the provided async function fetchUsername to return the username
Future<String> greetUser() async {
  return fetchUsername().then((value) => addHello(value));
}

// Part 3
//You can call the provided async function logoutUser to logout the user
Future<String> sayGoodbye() async {
  return logoutUser()
      .then((value) => "$value Thanks, see you next time")
      .catchError((error) => "${error.toString()} we have an error");
}
