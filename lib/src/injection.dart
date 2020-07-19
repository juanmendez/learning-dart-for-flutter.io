import 'package:injectable/injectable.dart';
import 'package:learning_dart/src/counter.dart';
import 'package:learning_dart/src/injection.config.dart';

@InjectableInit(generateForDir: ["lib"])
void configuredInjection(String environment) =>
    $initGetIt(getIt, environment: environment);

// constants are written just like in Java
abstract class Env {
  static const dev = "development";
  static const prod = "production";
  static const test = "testing";
}
