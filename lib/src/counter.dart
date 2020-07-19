import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:learning_dart/src/injection.dart';

import 'injection.config.dart';

// Interfaces don't exist in Dart, but there is multiple inheritance
// in order to compensate with multiple implementations for a class.
abstract class ICounterRepository {
  String name;
}

@Injectable(as: ICounterRepository, env: [Env.prod])
class CounterRepository extends ICounterRepository{
  @override
  String name = "Production Counter Repository";
}

@Injectable(as: ICounterRepository, env: [Env.dev])
class DevCounterRepository extends ICounterRepository{
  @override
  String name = "Development Repository";
}

@Injectable()
class CounterChangeNotifier {
  final ICounterRepository _counterRepository;

  CounterChangeNotifier(this._counterRepository);

  String whatsForCounterRepo() => _counterRepository.name;
}

// this acts as a global variable which is read from counter.dart
final getIt = GetIt.instance;

void main() {
  // so in your tests you can run a Env.test and be allow to mock classes
  // just in the way we do with mockito, which is also available here.
  configuredInjection(Env.prod);
  final notifier = getIt.get<CounterChangeNotifier>();

  // prints: Production Counter Repository
  print(notifier.whatsForCounterRepo());
}