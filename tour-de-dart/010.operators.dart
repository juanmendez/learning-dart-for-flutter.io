void main() {
  // ternary
  final a = 1;
  var b = null;

  // Elvis with mustache
  var c = b ?? a;
  assert(a == c);

  print(a % 2 == 0 ? "even": "odd");
  b ??= "b"; // assign "b" if b is null
  print("b is $b");

  if(b is! int) {
    print("b is not an integer");
  }

  if(b is String) {
    print("b is a string");
  }

  // cascade acting like apply()
  var cc = Cascade()
  ..x = 4
  ..y = 3;

  print("cascade ${cc.x} ${cc.y}");

  // val z = cc?.z ?: "z" in Kotlin
  final z = cc.z ?? "z";
  assert(z == "z");

  // sadly there is no when() instead it is using old switch cases
}

class Cascade {
  int x = 0;
  int y = 0;
  int? z = null;
}