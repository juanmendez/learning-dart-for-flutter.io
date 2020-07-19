import 'package:injectable/injectable.dart' hide test;
import 'package:learning_dart/src/counter.dart';
import 'package:learning_dart/src/injection.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockCounterRepository extends Mock implements ICounterRepository {}

void main() {
  final repo = MockCounterRepository();

  setUp(() {
    /**
     * We could had placed MockCounterRepository in a separate directory
     * having also the annotations instructing to auto generate an instance in injection.config.dart.
     * I personally don't like any testing reference found in our development workspace,
     * so instead the dependency is added in here manually
     */
    getIt.registerFactory<ICounterRepository>(() => repo);
    configuredInjection(Env.test);
  });

  test("description", () async {
    final desc = "Testing Counter Repository";
    when(repo.name).thenReturn(desc);

    final notifier = getIt.get<CounterChangeNotifier>();
    expect(notifier.whatsForCounterRepo(), desc);
  });
}
