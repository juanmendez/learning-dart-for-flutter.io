# nullables

Sadly Dart has no var?.let{} or var?.apply{} as Kotlin does. One thing that came from an article I read was using [Quiver](https://pub.dartlang.org/packages/quiver).  Which has `optional` features to protect whenever a variable has a null value. That `Dart` package was used in this demo.

- The good thing is `Dart` uses null safe references such as `person?.name="Paco"`. 
- `Dart` uses `??` as the `Elvis` alternative used in Kotlin.

I feel as if I were writing Java to some extend. At one point I wrote a lambda and didn't specify a return value just keeping in mind the value statement would do so automatically as it's the case of `Kotlin`. I went back and wrote `return` before the value. :)
