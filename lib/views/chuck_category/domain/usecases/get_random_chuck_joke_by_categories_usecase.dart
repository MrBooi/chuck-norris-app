import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_category/domain/repositories/chuck_categories_repositories.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomChuckJokeByCatergoryUsecases
    implements UseCase<ChuckJoke, RandomCatergoryParams> {
  final ChuckcategorieRepository repository;

  GetRandomChuckJokeByCatergoryUsecases(this.repository);

  @override
  Future<Either<Failure, ChuckJoke>> call(RandomCatergoryParams params) async {
    return await repository.getRandomChuckJokeByCatergory(params.catergory);
  }
}

class RandomCatergoryParams extends Equatable {
  final String catergory;

  RandomCatergoryParams(this.catergory);

  @override
  List<Object> get props => [catergory];
}
