import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockChuckJokeRepository extends Mock implements ChuckJokeRepository {}

void main() {
  GetRandomChuckJokeUsecase usecase;
  MockChuckJokeRepository mockChuckJokeRepository;

  setUp(() {
    mockChuckJokeRepository = MockChuckJokeRepository();
    usecase = GetRandomChuckJokeUsecase(mockChuckJokeRepository);
  });

  final tChuckJoke = ChuckJoke(value: "value", url: "url");

  test('Should get Chuck joke from the respository', () async {
    // arrange
    when(mockChuckJokeRepository.getRandomChuckJoke()).thenAnswer(
      (_) async => Right(tChuckJoke),
    );
    // act
    final result = await usecase.call(const NoParams());
    // assert
    expect(result, Right<dynamic, ChuckJoke>(tChuckJoke));
    verify(mockChuckJokeRepository.getRandomChuckJoke());
    verifyNoMoreInteractions(mockChuckJokeRepository);
  });
}
