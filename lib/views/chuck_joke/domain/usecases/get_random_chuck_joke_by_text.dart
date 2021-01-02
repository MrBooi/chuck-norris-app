import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomChuckJokeByCategoryUsecase
    implements UseCase<ChuckJoke, RandomTextParams> {
  final ChuckJokeRepository repository;

  GetRandomChuckJokeByCategoryUsecase(this.repository);

  @override
  Future<Either<Failure, ChuckJoke>> call(RandomTextParams params) async {
    return await repository.getRandomChuckJokeByCatergory(params.catergory);
  }
}

class RandomTextParams extends Equatable {
  final String catergory;

  RandomTextParams(this.catergory);

  @override
  List<Object> get props => [catergory];
}
