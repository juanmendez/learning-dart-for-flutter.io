main() {
  isAPairNumber(10);
  isSingleLinePairNumber(8);
  optionalParams(age: 14, email: "dart@dart.com");

  // anonymous
  anonymous();
  closure();
  lexicalScopes();
  lexicalClosures();
}

void anonymous() {
  final loudMe = (msg) => "Hello $msg";
  print(loudMe("test"));
}

void closure() {
  final fruits = const["Apples", "Oranges", "Bananas"];

  // how to include an anonymous function
  fruits.forEach(
      (fruit) {
        print("fruit at ${fruits.indexOf(fruit)}: $fruit");
      }
  );
}

// similar to java, return type is at the beginning
// function doesn't have func, fun, or function in place
bool isAPairNumber(int number) {
  return number % 2 == 0;
}

bool isSingleLinePairNumber(int number) => number % 2 == 0;

void optionalParams({int? age, String? email}) {
  print("$age $email");
}

final top = "top";
void lexicalScopes() {
  final fun = "function";

  final fn = () => {
    print("$top $fun")
  };

  fn();
}


void lexicalClosures() {
  final i = "2020";
  final test = () => "lexical closure knows $i";

  print(test());
}