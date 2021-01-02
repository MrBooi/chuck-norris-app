import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:chuck_norris/views/chuck_category/domain/repositories/chuck_categories_repositories.dart';
import 'package:dartz/dartz.dart';

class GetChuckCategoriesUsecases implements UseCase<ChuckCategories, NoParams> {
  final ChuckcategorieRepository repository;

  GetChuckCategoriesUsecases(this.repository);
  @override
  Future<Either<Failure, ChuckCategories>> call(NoParams params) async {
    return await repository.getChuckCategories();
  }
}
