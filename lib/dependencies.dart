import 'package:watch_it/watch_it.dart';
import 'package:watch_it_test/models/counter_model.dart';

void initializeDependencies() {
  di.registerSingleton<CounterModel>(CounterModel());
}
