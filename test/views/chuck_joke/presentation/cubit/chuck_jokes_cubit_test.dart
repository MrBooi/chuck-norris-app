import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/cubit/cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetRandomChuckJoke extends Mock implements GetRandomChuckJokeUsecase {
}

void main() {
  ChuckJokesCubit cubit;
  MockGetRandomChuckJoke mockGetRandomChuckJoke;

  setUp(() {
    mockGetRandomChuckJoke = MockGetRandomChuckJoke();
    cubit = ChuckJokesCubit(
      random: mockGetRandomChuckJoke,
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
}
