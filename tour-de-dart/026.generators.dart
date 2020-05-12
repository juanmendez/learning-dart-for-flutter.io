/**
 * When you need to lazily produce a sequence of values,
 * consider using a generator function. Dart has built-in support
 * for two kinds of generator functions:
 * Synchronous generator: Returns an Iterable object.
 * Asynchronous generator: Returns a Stream object.
 *
 * Here async comes with asterisk, in contrast with Futures
 * This is a good explanation https://stackoverflow.com/a/55397133/11736763
 */
void main() {
  for( var i in naturalsTo(5)) {
    print("naturalsTo $i");
  }

  asynchronousNaturalsTo(5).listen((event) {
    print("asynchronousNaturalsTo $event");
  });

  asyncRecursiveNaturalsTo(5).listen((event) {
    print("asyncRecursiveNaturalsTo $event");
  });
}

// To implement a synchronous generator function, mark the function body as sync*, and use yield statements to deliver values:
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

// To implement an asynchronous generator function, mark the function body as async*, and use yield statements to deliver values
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asyncRecursiveNaturalsTo(int n) async* {
  if (n > 0) {
    yield n;

    // If your generator is recursive, you can improve its performance by using yield*
    yield* asyncRecursiveNaturalsTo(n - 1);
  }
}

