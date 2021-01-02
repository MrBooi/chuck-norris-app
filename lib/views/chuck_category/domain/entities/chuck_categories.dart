import 'package:freezed_annotation/freezed_annotation.dart';

part 'chuck_categories.freezed.dart';
part 'chuck_categories.g.dart';

@freezed
abstract class ChuckCategories with _$ChuckCategories {
  factory ChuckCategories({List<String> categories}) = _ChuckCategories;

  factory ChuckCategories.fromJson(Map<String, dynamic> json) =>
      _$ChuckCategoriesFromJson(json);
}
