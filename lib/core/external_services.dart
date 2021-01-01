import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import '../injection_container.dart';

void externalServices() {
  // Http
  sl.registerLazySingleton(() => http.Client());
  // DataConnectionChecker
  sl.registerLazySingleton(() => DataConnectionChecker());
}
