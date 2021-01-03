import 'package:bloc/bloc.dart';
import 'package:chuck_norris/core/usecases/usecase.dart';
import 'package:chuck_norris/views/chuck_category/domain/usecases/get_chuck_categories_usecase.dart';
import 'package:flutter/material.dart';

import 'cubit.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetChuckCategoriesUsecases categories;

  CategoriesCubit({@required this.categories})
      : super(CategoriesState.loading());

  Future<void> fetchCategories() async {
    final eitherFailureOrCategories = await categories(NoParams());

    eitherFailureOrCategories.fold(
      (f) => emit(CategoriesState.error(failure: f)),
      (categories) => emit(CategoriesState.loaded(chuckCategories: categories)),
    );
  }
}
