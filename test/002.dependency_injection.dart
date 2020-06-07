import 'package:get_it/get_it.dart';
import 'package:learning_dart/src/002.dependency_injection.dart';
import 'package:test/test.dart';

void main() {
  final GetIt getIt = GetIt.I;
  getIt.registerSingletonAsync<Grinder>(() async => Grinder());

  getIt.registerSingletonAsync<CoffeeBean>(
      () async => CoffeeBean(getIt.get<Grinder>()),
      dependsOn: [Grinder]
  );

  getIt.registerSingletonAsync<Sugar>(() async => Sugar());
  getIt.registerSingletonAsync<Water>(() async => Water());

  getIt.registerSingletonAsync<Coffee>(() async {
    // my first impression was the method required arguments for each dependency
    // making this method being invoked while passing the instances.
    // but that wasn't the case
    
    return Coffee(
        getIt.get<CoffeeBean>(),
        getIt.get<Sugar>(),
        getIt<Water>()
    );
  }, dependsOn: [CoffeeBean, Sugar, Water]);

  group("initial get_it", () {
    test("was coffee made?", () {
      var coffee = GetIt.I.get<Coffee>();
      expect(coffee, isNotNull);
      expect(coffee.coffeeBean.grinder, isNotNull);
    });
  });
}
