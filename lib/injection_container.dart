import 'package:get_it/get_it.dart';

import 'core/core_services.dart';
import 'core/external_services.dart';
import 'views/chuck_category/categories_services.dart';
import 'views/chuck_joke/chuck_joke_services.dart';

final GetIt locator = GetIt.instance;
final GetIt sl = GetIt.instance;
void initServices() {
  // chuckJokeServices
  chuckJokeServices();
  //categoryServices
  categoriesServices();
  // core
  coreServices();
  // External
  externalServices();
}
