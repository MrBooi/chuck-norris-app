import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.loaded(
      {@required ChuckCategories chuckCategories}) = Loaded;
  const factory CategoriesState.error({@required Failure failure}) = Error;
}
