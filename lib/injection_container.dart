import 'package:get_it/get_it.dart';

import 'core/core_services.dart';
import 'core/external_services.dart';
import 'views/chuck_joke/presentation/chuck_joke_services.dart';

final GetIt locator = GetIt.instance;
final GetIt sl = GetIt.instance;
void initServices() {
  // chuckJokeServices
  chuckJokeServices();
// core
  coreServices();
// External
  externalServices();
}
