import 'package:chuck_norris/core/shared/widgets/error_display.dart';
import 'package:chuck_norris/core/shared/widgets/loading_widget.dart';
import 'package:chuck_norris/injection_container.dart';
import 'package:chuck_norris/views/chuck_category/presentation/cubit/cubit.dart';
import 'package:chuck_norris/views/chuck_category/presentation/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _renderBody();
  }

  Widget _renderBody() {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      cubit: sl<CategoriesCubit>()..fetchCategories(),
      builder: (builderContext, state) {
        return state.when(
          loading: () => LoadingWidget(),
          loaded: (categories) => CategoryList(categories: categories),
          error: (f) => ErrorDisplay(failure: f),
        );
      },
    );
  }
}
