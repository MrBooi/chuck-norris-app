import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomChuckJokeUsecase implements UseCase<ChuckJoke, NoParams> {
  final ChuckJokeRepository repository;

  GetRandomChuckJokeUsecase(this.repository);
  @override
  Future<Either<Failure, ChuckJoke>> call(NoParams params) async {
    return await repository.getRandomChuckJoke();
  }
}
