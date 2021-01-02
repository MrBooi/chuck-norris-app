import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/core/network/network_info.dart';
import 'package:chuck_norris/views/chuck_category/data/datasources/chuck_categories_remote_datasource.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/views/chuck_category/domain/repositories/chuck_categories_repositories.dart';
import 'package:dartz/dartz.dart';

class ChuckcategorieRepositoryImpl implements ChuckcategorieRepository {
  final ChuckcategorieRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  ChuckcategorieRepositoryImpl({this.remoteDataSource, this.networkInfo});
  @override
  Future<Either<Failure, ChuckCategories>> getChuckCategories() async {
    if (!await networkInfo.isConnected) return Left(ServerFailure());
    try {
      final response = await remoteDataSource.getChuckCategories();
      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }
}
