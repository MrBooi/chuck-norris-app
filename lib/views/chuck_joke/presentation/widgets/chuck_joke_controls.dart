import 'package:chuck_norris/views/chuck_joke/presentation/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChuckJokeControls extends StatefulWidget {
  @override
  _ChuckJokeControlsState createState() => _ChuckJokeControlsState();
}

class _ChuckJokeControlsState extends State<ChuckJokeControls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        RaisedButton(
          key: const Key('Get-Random-Number'),
          onPressed: dispatchRandom,
          child: const Text('Get Randam Trivia'),
        ),
      ],
    );
  }

  void dispatchRandom() {
    final cubit = context.read<ChuckJokesCubit>();
    cubit.getChuckRandomJoke();
  }
}
