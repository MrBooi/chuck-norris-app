import 'package:chuck_norris/core/network/network_info.dart';

import '../injection_container.dart';

void coreServices() {
  // Network
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}
