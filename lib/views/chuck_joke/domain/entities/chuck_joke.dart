import 'package:freezed_annotation/freezed_annotation.dart';

part 'chuck_joke.freezed.dart';
part 'chuck_joke.g.dart';

@freezed
abstract class ChuckJoke with _$ChuckJoke {
  factory ChuckJoke({String value, String url}) = _ChuckJoke;

  factory ChuckJoke.fromJson(Map<String, dynamic> json) =>
      _$ChuckJokeFromJson(json);
}
