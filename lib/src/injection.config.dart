// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'counter.dart';

/// Environment names
const _production = 'production';
const _development = 'development';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.factory<ICounterRepository>(() => CounterRepository(),
      registerFor: {_production});
  gh.factory<ICounterRepository>(() => DevCounterRepository(),
      registerFor: {_development});
  gh.factory<CounterChangeNotifier>(
      () => CounterChangeNotifier(g<ICounterRepository>()));
}
