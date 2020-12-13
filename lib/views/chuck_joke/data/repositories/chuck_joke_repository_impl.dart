import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/network/network_info.dart';
import 'package:chuck_norris/views/chuck_joke/data/datasources/chuck_joke_remote_datasource.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class ChuckJokeRespositoryImpl implements ChuckJokeRepository {
  final ChuckJokeRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  ChuckJokeRespositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, ChuckJoke>> getRandomChuckJoke() async {
    if (!await networkInfo.isConnected) return Left(ServerFailure());
    try {
      final response = await remoteDataSource.getRandomChuckJoke();
      return Right(response);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }
}
