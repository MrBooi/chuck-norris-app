import 'package:chuck_norris/views/chuck_joke/data/datasources/chuck_joke_remote_datasource.dart';
import 'package:chuck_norris/views/chuck_joke/data/repositories/chuck_joke_repository_impl.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke_by_text.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/cubit/chuck_jokes_cubit.dart';

import '../../../injection_container.dart';

void chuckJokeServices() {
  // cubit
  sl.registerFactory(
    () => ChuckJokesCubit(
      random: sl(),
      categoryText: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetRandomChuckJokeUsecase(
      sl(),
    ),
  );

  sl.registerLazySingleton(
    () => GetRandomChuckJokeByCategoryUsecase(
      sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<ChuckJokeRepository>(
    () => ChuckJokeRespositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  //Data sources
  sl.registerLazySingleton<ChuckJokeRemoteDatasource>(
    () => ChuckJokeRemoteDatasourceImpl(sl()),
  );
}
