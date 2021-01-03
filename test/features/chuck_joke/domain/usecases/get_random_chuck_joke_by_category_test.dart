import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/repositories/chuck_joke_repository.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke_by_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockChuckJokeRepository extends Mock implements ChuckJokeRepository {}

void main() {
  GetRandomChuckJokeByCategoryUsecase usecase;
  MockChuckJokeRepository mockChuckJokeRepository;

  setUp(() {
    mockChuckJokeRepository = MockChuckJokeRepository();
    usecase = GetRandomChuckJokeByCategoryUsecase(mockChuckJokeRepository);
  });

  final tChuckJoke = ChuckJoke(value: "value", url: "url");
  const tCategoryText = "animal";

  test('Should get Chuck joke by category from the respository', () async {
    // arrange
    when(mockChuckJokeRepository.getRandomChuckJokeByCatergory(any)).thenAnswer(
      (_) async => Right(tChuckJoke),
    );
    // act
    final result = await usecase.call(RandomTextParams(tCategoryText));
    // assert
    expect(result, Right<dynamic, ChuckJoke>(tChuckJoke));
    verify(
        mockChuckJokeRepository.getRandomChuckJokeByCatergory(tCategoryText));
    verifyNoMoreInteractions(mockChuckJokeRepository);
  });
}
