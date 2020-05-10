void main() {
  final bread = Bread(BreadType.bum);

  final toaster = Toaster<Bread>();
  print(toaster.printBread(bread));

  // if you skip the type, it goes to the base class
  final defaultToaster = Toaster();
  assert(defaultToaster is Toaster<Bread>);

  print(bread.hello(defaultToaster));

  final listOfStrings = <String>['Seth', 'Kathy', 'Lars'];
  final setOfStrings = Set<String>.from(listOfStrings);

  // this cannot be done in Java, but is efficient in Dart
  assert(listOfStrings is List<String>);
  assert(setOfStrings is Set<String>);

}

enum BreadType {
  bum,
  sandwitch,
  french
}

class Bread {
  BreadType breadType;
  Bread(this.breadType);

  // Dart also supports generics targeting methods not just classes
  String hello<T extends Toaster>(T t) {
    return "hello ${t.printBread(this)}";
  }
}

// Here T is defined as any subclass of Bread or itself.. so it is restricted
class Toaster<T extends Bread> {
  String printBread(T bread) => bread.breadType.toString();
}
