import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke_by_text.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/cubit/cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetRandomChuckJoke extends Mock implements GetRandomChuckJokeUsecase {
}

class MockGetRandomChuckJokeByText extends Mock
    implements GetRandomChuckJokeByCategoryUsecase {}

void main() {
  ChuckJokesCubit cubit;
  MockGetRandomChuckJoke mockGetRandomChuckJoke;
  MockGetRandomChuckJokeByText mockGetRandomChuckJokeByText;

  setUp(() {
    mockGetRandomChuckJoke = MockGetRandomChuckJoke();
    mockGetRandomChuckJokeByText = MockGetRandomChuckJokeByText();
    cubit = ChuckJokesCubit(
      random: mockGetRandomChuckJoke,
      categoryText: mockGetRandomChuckJokeByText,
    );
  });

  test('Should check if initial state is Empty', () {
    // assert
    expect(cubit.state, const ChuckJokesState.empty());
  });

  group("GetRandomChuckJoke", () {
    final tchuckJoke = ChuckJoke(value: "joke", url: 'url');

    test('Should get data from the random use case', () async {
      // arrange
      when(mockGetRandomChuckJoke(any))
          .thenAnswer((_) async => Right(tchuckJoke));
      // act
      await cubit.getChuckRandomJoke();
      await untilCalled(mockGetRandomChuckJoke(any));
      // assert
      verify(
        mockGetRandomChuckJoke(const NoParams()),
      );
    });

    test('Should emit [loading, loaded] when data is gotten successfully',
        () async {
      // arrange
      when(mockGetRandomChuckJoke(any))
          .thenAnswer((_) async => Right(tchuckJoke));
      // assert later
      final expected = [const Loading(), Loaded(chuckJoke: tchuckJoke)];
      expectLater(cubit, emitsInOrder(expected));
      await cubit.getChuckRandomJoke();
    });

    test('Should emit [loading, ServerFailure] when data is getting data fails',
        () async {
      // arrange
      when(mockGetRandomChuckJoke(any)).thenAnswer(
        (_) async => const Left(ServerFailure()),
      );
      // assert later
      final expected = [
        const Loading(),
        const Error(failure: ServerFailure()),
      ];
      expectLater(cubit, emitsInOrder(expected));
      await cubit.getChuckRandomJoke();
    });
  });

  group("getRandomJokeByCategory", () {
    final tchuckJoke = ChuckJoke(value: "joke", url: 'url');
    const tCategoryText = "animal";

    test('Should get data from the random use case', () async {
      // arrange
      when(mockGetRandomChuckJokeByText(any))
          .thenAnswer((_) async => Right(tchuckJoke));
      // act
      await cubit.getChuckRandomJokebyCategory(tCategoryText);
      await untilCalled(mockGetRandomChuckJokeByText(any));
      // assert
      verify(
        mockGetRandomChuckJokeByText(RandomTextParams(tCategoryText)),
      );
    });

    test('Should emit [loading, loaded] when data is gotten successfully',
        () async {
      // arrange
      when(mockGetRandomChuckJokeByText(any))
          .thenAnswer((_) async => Right(tchuckJoke));
      // assert later
      final expected = [const Loading(), Loaded(chuckJoke: tchuckJoke)];
      expectLater(cubit, emitsInOrder(expected));
      await cubit.getChuckRandomJokebyCategory(tCategoryText);
    });

    test('Should emit [loading, ServerFailure] when data is getting data fails',
        () async {
      // arrange
      when(mockGetRandomChuckJokeByText(any)).thenAnswer(
        (_) async => const Left(ServerFailure()),
      );
      // assert later
      final expected = [
        const Loading(),
        const Error(failure: ServerFailure()),
      ];
      expectLater(cubit, emitsInOrder(expected));
      await cubit.getChuckRandomJokebyCategory(tCategoryText);
    });
  });
}
