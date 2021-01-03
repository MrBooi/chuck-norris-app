import 'package:chuck_norris/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'views/chuck_joke/presentation/cubit/chuck_jokes_cubit.dart';
import 'views/chuck_joke/presentation/pages/Chuck_joke_page.dart';

class ChuckNorrisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuck Norris Joke App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => sl<ChuckJokesCubit>(),
        child: ChuckJokePage(),
      ),
    );
  }
}
