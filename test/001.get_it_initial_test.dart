import 'package:get_it/get_it.dart';
import 'package:learning_dart/src/001.get_it_initial.dart';
import 'package:test/test.dart';

void main() {
  //final GetIt getIt = GetIt.instance;
  final GetIt getIt = GetIt.I;

  group("initial get_it", () {
    setUpAll((){
      getIt.registerSingleton<AppModel>(AppModel());
    });

    test("expect both instances to be the same", () {
        expect(getIt<AppModel>(), same(getIt<AppModel>()));
    });

    test("changes made in one place happen in another reference", (){
        AppModel model = getIt<AppModel>();
        model.language = "Kotlin";

        expect(GetIt.I<AppModel>().language, equals("Kotlin"));
    });

    test("testing if a singleton is already registered", () {
       expect(GetIt.I.isRegistered<AppModel>(), equals(true));
    });

    test("not a good idea but resetting a singleton", () {
        // great for unit-test..
        GetIt.I.reset();
        expect(GetIt.I.isRegistered<AppModel>(), equals(false));
    });

    // not required, but just still learning how to test :)
    tearDownAll((){
      getIt.unregister<AppModel>();
    });
  });


  group("lazy factory", () {
      test("include lazy registration", () {
          GetIt.I.registerLazySingleton(() => LazyAppModel());
          expect(lazyInitialization, equals(false));

          expect(GetIt.I.get<LazyAppModel>(), isNotNull);
          expect(lazyInitialization, equals(true));
      });

      tearDownAll((){
          GetIt.I.reset();
      });
  });
}
