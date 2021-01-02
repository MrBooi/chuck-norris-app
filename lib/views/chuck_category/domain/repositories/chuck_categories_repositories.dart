import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:dartz/dartz.dart';

abstract class ChuckcategorieRepository {
  Future<Either<Failure, ChuckCategories>> getChuckCategories();
}
