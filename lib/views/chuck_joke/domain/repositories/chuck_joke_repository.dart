import 'package:dartz/dartz.dart';
import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';

abstract class ChuckJokeRepository {
  Future<Either<Failure, ChuckJoke>> getRandomChuckJoke();
  Future<Either<Failure, ChuckJoke>> getRandomChuckJokeByCatergory(
      String category);
}
