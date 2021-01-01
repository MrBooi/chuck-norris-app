import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chuck_jokes_state.freezed.dart';

@freezed
abstract class ChuckJokesState with _$ChuckJokesState {
  const factory ChuckJokesState.empty() = Empty;
  const factory ChuckJokesState.loading() = Loading;
  const factory ChuckJokesState.loaded({@required ChuckJoke chuckJoke}) =
      Loaded;
  const factory ChuckJokesState.error({@required Failure failure}) = Error;
}
