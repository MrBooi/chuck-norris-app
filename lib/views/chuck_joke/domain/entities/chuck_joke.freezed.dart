// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chuck_joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChuckJoke _$ChuckJokeFromJson(Map<String, dynamic> json) {
  return _ChuckJoke.fromJson(json);
}

/// @nodoc
class _$ChuckJokeTearOff {
  const _$ChuckJokeTearOff();

// ignore: unused_element
  _ChuckJoke call({String value, String url}) {
    return _ChuckJoke(
      value: value,
      url: url,
    );
  }

// ignore: unused_element
  ChuckJoke fromJson(Map<String, Object> json) {
    return ChuckJoke.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChuckJoke = _$ChuckJokeTearOff();

/// @nodoc
mixin _$ChuckJoke {
  String get value;
  String get url;

  Map<String, dynamic> toJson();
  $ChuckJokeCopyWith<ChuckJoke> get copyWith;
}

/// @nodoc
abstract class $ChuckJokeCopyWith<$Res> {
  factory $ChuckJokeCopyWith(ChuckJoke value, $Res Function(ChuckJoke) then) =
      _$ChuckJokeCopyWithImpl<$Res>;
  $Res call({String value, String url});
}

/// @nodoc
class _$ChuckJokeCopyWithImpl<$Res> implements $ChuckJokeCopyWith<$Res> {
  _$ChuckJokeCopyWithImpl(this._value, this._then);

  final ChuckJoke _value;
  // ignore: unused_field
  final $Res Function(ChuckJoke) _then;

  @override
  $Res call({
    Object value = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$ChuckJokeCopyWith<$Res> implements $ChuckJokeCopyWith<$Res> {
  factory _$ChuckJokeCopyWith(
          _ChuckJoke value, $Res Function(_ChuckJoke) then) =
      __$ChuckJokeCopyWithImpl<$Res>;
  @override
  $Res call({String value, String url});
}

/// @nodoc
class __$ChuckJokeCopyWithImpl<$Res> extends _$ChuckJokeCopyWithImpl<$Res>
    implements _$ChuckJokeCopyWith<$Res> {
  __$ChuckJokeCopyWithImpl(_ChuckJoke _value, $Res Function(_ChuckJoke) _then)
      : super(_value, (v) => _then(v as _ChuckJoke));

  @override
  _ChuckJoke get _value => super._value as _ChuckJoke;

  @override
  $Res call({
    Object value = freezed,
    Object url = freezed,
  }) {
    return _then(_ChuckJoke(
      value: value == freezed ? _value.value : value as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChuckJoke implements _ChuckJoke {
  _$_ChuckJoke({this.value, this.url});

  factory _$_ChuckJoke.fromJson(Map<String, dynamic> json) =>
      _$_$_ChuckJokeFromJson(json);

  @override
  final String value;
  @override
  final String url;

  @override
  String toString() {
    return 'ChuckJoke(value: $value, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChuckJoke &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$ChuckJokeCopyWith<_ChuckJoke> get copyWith =>
      __$ChuckJokeCopyWithImpl<_ChuckJoke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChuckJokeToJson(this);
  }
}

abstract class _ChuckJoke implements ChuckJoke {
  factory _ChuckJoke({String value, String url}) = _$_ChuckJoke;

  factory _ChuckJoke.fromJson(Map<String, dynamic> json) =
      _$_ChuckJoke.fromJson;

  @override
  String get value;
  @override
  String get url;
  @override
  _$ChuckJokeCopyWith<_ChuckJoke> get copyWith;
}
