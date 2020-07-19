# Dependency injection based on abstraction

Dart lacks interfaces and uses instead abstract classes, allowing to extend and implement other abstract classes as well. 
We still would like to make use of a dependency which is treated as its abstract class for it to be nested in another dependency.

In this demo we using environments to set up a flavor of `ICounterRepository` being assigned to `CounterChangeNotifier`.
So in the end `CounterChangeNotifier` is unaware of the concrete class used as a dependency.
This is what [Duck Typing](https://en.wikipedia.org/wiki/Duck_typing) is about.

The reason behind applying an abstract class corresponds with `LSP: The Liskov Substitution Principle`. 
Which implies `"To build forward systems from interchangeable parts, those parts must adhere to a contract that allows those parts to be substituted one for another."`.
I am very grateful for this principle which is a great way to deal with third party libraries and allowing to replace them by others as well. Following this principle we make our applications being very independent from third party libraries as the rest of our application is very agnostic of what libarry we are using.

Another great reason for using this dependency technique is for providing resources which can be different for development and production.

We can run `counter.dart` found under `lib/src`, as well as the testing flavor found in `test/counter_test.dart`.
In order to generate our code we run `pub run build_runner watch` in our terminal.
We are also making use in here the mocking library [`Mockito`](https://pub.dev/packages/mockito) which is a counter part in Java/Kotlin. And last but not lease [`get_it`](https://pub.dev/packages/get_it) which is the dependency injection library making this demo possible.