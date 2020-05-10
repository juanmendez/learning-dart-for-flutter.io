const hello = "Hello";

main() {
  // final is used to assign a value once to a variable
  // const is used in compile-time constants, think of top level declarations
  final name = "Bob"; // you can also use 'Bob'
  // name = "eduardo";  gives an error

  print("file says $hello");

  // you can also use it to make a list non-mutable
  // here also list is only assigned once
  // similar to Kotlin's val list = listOf(0, 1, 2, 3, 4, 5)
  final list = const[0, 1, 2, 3, 4, 5];
  // list.add(4); Unsupported operation: Cannot add to an unmodifiable list
}