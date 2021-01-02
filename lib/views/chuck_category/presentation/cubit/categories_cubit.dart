import 'package:bloc/bloc.dart';
import 'package:chuck_norris/views/chuck_category/domain/repositories/chuck_categories_repositories.dart';
import 'package:flutter/material.dart';

import 'cubit.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final ChuckcategorieRepository repository;

  CategoriesCubit({@required this.repository})
      : super(CategoriesState.loading());

  Future<void> fetchCategories() async {
    final eitherFailureOrCategories = await repository.getChuckCategories();

    eitherFailureOrCategories.fold(
      (f) => emit(CategoriesState.error(failure: f)),
      (categories) => emit(CategoriesState.loaded(chuckCategories: categories)),
    );
  }
}
