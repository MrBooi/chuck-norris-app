import 'package:chuck_norris/core/shared/widgets/error_display.dart';
import 'package:chuck_norris/core/shared/widgets/loading_widget.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/cubit/cubit.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/widgets/chuck_joke_controls.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/widgets/chuck_joke_display.dart';
import 'package:chuck_norris/views/chuck_joke/presentation/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';

class ChuckDisplayPage extends StatefulWidget {
  final String query;

  const ChuckDisplayPage({Key key, this.query}) : super(key: key);

  @override
  _ChuckDisplayPageState createState() => _ChuckDisplayPageState();
}

class _ChuckDisplayPageState extends State<ChuckDisplayPage> {
  final cubit = sl<ChuckJokesCubit>();

  @override
  void initState() {
    cubit.getChuckRandomJokebyCategory(widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: SingleChildScrollView(child: _renderChuckJokeBody(context)),
    );
  }

  Widget _renderAppBar() {
    return AppBar(
      title: const Text('Chuck Norris Jokes'),
      actions: [
        Icon(Icons.search),
      ],
    );
  }

  BlocProvider<ChuckJokesCubit> _renderChuckJokeBody(BuildContext context) {
    return BlocProvider(
      create: (_) => cubit,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              _renderTopHalf(),
              const SizedBox(height: 20),
              ChuckJokeControls()
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTopHalf() {
    return BlocBuilder<ChuckJokesCubit, ChuckJokesState>(
        builder: (context, state) {
      return state.when(
        empty: () => EmptyWidget(message: "No Chuck Jokes found.."),
        loading: () => LoadingWidget(),
        loaded: (chuckJoke) => ChuckJokeDisplay(joke: chuckJoke),
        error: (f) => ErrorDisplay(failure: f),
      );
    });
  }
}
