import 'package:bloc/bloc.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke_by_text.dart';
import 'package:meta/meta.dart';
import 'cubit.dart';

class ChuckJokesCubit extends Cubit<ChuckJokesState> {
  GetRandomChuckJokeUsecase getRandomChuckJokeUsecase;
  GetRandomChuckJokeByCategoryUsecase getRandomChuckJokeByTextUsecase;

  ChuckJokesCubit({
    @required GetRandomChuckJokeUsecase random,
    @required GetRandomChuckJokeByCategoryUsecase categoryText,
  })  : getRandomChuckJokeUsecase = random,
        getRandomChuckJokeByTextUsecase = categoryText,
        super(ChuckJokesState.empty());

  Future<void> getChuckRandomJoke() async {
    emit(const ChuckJokesState.loading());
    final eitherFailureOrJoke =
        await getRandomChuckJokeUsecase(const NoParams());

    eitherFailureOrJoke.fold(
      (f) => emit(ChuckJokesState.error(failure: f)),
      (chuckJoke) => emit(ChuckJokesState.loaded(chuckJoke: chuckJoke)),
    );
  }

  Future<void> getChuckRandomJokebyCategory(String query) async {
    emit(const ChuckJokesState.loading());
    final eitherFailureOrJoke =
        await getRandomChuckJokeByTextUsecase(RandomTextParams(query));

    eitherFailureOrJoke.fold(
      (f) => emit(ChuckJokesState.error(failure: f)),
      (chuckJoke) => emit(ChuckJokesState.loaded(chuckJoke: chuckJoke)),
    );
  }
}
