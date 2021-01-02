// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chuck_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChuckCategories _$ChuckCategoriesFromJson(Map<String, dynamic> json) {
  return _ChuckCategories.fromJson(json);
}

/// @nodoc
class _$ChuckCategoriesTearOff {
  const _$ChuckCategoriesTearOff();

// ignore: unused_element
  _ChuckCategories call({List<String> categories}) {
    return _ChuckCategories(
      categories: categories,
    );
  }

// ignore: unused_element
  ChuckCategories fromJson(Map<String, Object> json) {
    return ChuckCategories.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChuckCategories = _$ChuckCategoriesTearOff();

/// @nodoc
mixin _$ChuckCategories {
  List<String> get categories;

  Map<String, dynamic> toJson();
  $ChuckCategoriesCopyWith<ChuckCategories> get copyWith;
}

/// @nodoc
abstract class $ChuckCategoriesCopyWith<$Res> {
  factory $ChuckCategoriesCopyWith(
          ChuckCategories value, $Res Function(ChuckCategories) then) =
      _$ChuckCategoriesCopyWithImpl<$Res>;
  $Res call({List<String> categories});
}

/// @nodoc
class _$ChuckCategoriesCopyWithImpl<$Res>
    implements $ChuckCategoriesCopyWith<$Res> {
  _$ChuckCategoriesCopyWithImpl(this._value, this._then);

  final ChuckCategories _value;
  // ignore: unused_field
  final $Res Function(ChuckCategories) _then;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ChuckCategoriesCopyWith<$Res>
    implements $ChuckCategoriesCopyWith<$Res> {
  factory _$ChuckCategoriesCopyWith(
          _ChuckCategories value, $Res Function(_ChuckCategories) then) =
      __$ChuckCategoriesCopyWithImpl<$Res>;
  @override
  $Res call({List<String> categories});
}

/// @nodoc
class __$ChuckCategoriesCopyWithImpl<$Res>
    extends _$ChuckCategoriesCopyWithImpl<$Res>
    implements _$ChuckCategoriesCopyWith<$Res> {
  __$ChuckCategoriesCopyWithImpl(
      _ChuckCategories _value, $Res Function(_ChuckCategories) _then)
      : super(_value, (v) => _then(v as _ChuckCategories));

  @override
  _ChuckCategories get _value => super._value as _ChuckCategories;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_ChuckCategories(
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChuckCategories implements _ChuckCategories {
  _$_ChuckCategories({this.categories});

  factory _$_ChuckCategories.fromJson(Map<String, dynamic> json) =>
      _$_$_ChuckCategoriesFromJson(json);

  @override
  final List<String> categories;

  @override
  String toString() {
    return 'ChuckCategories(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChuckCategories &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  _$ChuckCategoriesCopyWith<_ChuckCategories> get copyWith =>
      __$ChuckCategoriesCopyWithImpl<_ChuckCategories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChuckCategoriesToJson(this);
  }
}

abstract class _ChuckCategories implements ChuckCategories {
  factory _ChuckCategories({List<String> categories}) = _$_ChuckCategories;

  factory _ChuckCategories.fromJson(Map<String, dynamic> json) =
      _$_ChuckCategories.fromJson;

  @override
  List<String> get categories;
  @override
  _$ChuckCategoriesCopyWith<_ChuckCategories> get copyWith;
}
