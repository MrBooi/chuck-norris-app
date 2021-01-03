import 'package:chuck_norris/views/chuck_category/data/repositories/chuck_categories_repository_impl.dart';

import '../../injection_container.dart';
import 'data/datasources/chuck_categories_remote_datasource.dart';
import 'domain/repositories/chuck_categories_repositories.dart';
import 'domain/usecases/get_chuck_categories_usecase.dart';
import 'presentation/cubit/categories_cubit.dart';

void categoriesServices() {
  // cubit
  sl.registerFactory(
    () => CategoriesCubit(
      categories: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(
    () => GetChuckCategoriesUsecases(
      sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<ChuckcategorieRepository>(
    () => ChuckcategorieRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  //Data sources
  sl.registerLazySingleton<ChuckcategorieRemoteDatasource>(
    () => ChuckcategorieRemoteDatasourceImpl(sl()),
  );
}
