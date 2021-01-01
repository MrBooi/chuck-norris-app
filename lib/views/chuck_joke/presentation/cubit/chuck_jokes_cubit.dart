import 'package:bloc/bloc.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_joke/domain/usecases/get_random_chuck_joke.dart';
import 'package:meta/meta.dart';
import 'cubit.dart';

class ChuckJokesCubit extends Cubit<ChuckJokesState> {
  GetRandomChuckJokeUsecase getRandomChuckJokeUsecase;

  ChuckJokesCubit({
    @required GetRandomChuckJokeUsecase random,
  })  : getRandomChuckJokeUsecase = random,
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
}
