import 'package:cached_network_image/cached_network_image.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:flutter/material.dart';

class ChuckJokeDisplay extends StatelessWidget {
  final ChuckJoke joke;

  const ChuckJokeDisplay({Key key, @required this.joke}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: [
          CachedNetworkImage(
            height: 80.0,
            imageUrl: joke.url.isEmpty
                ? joke.url
                : "https://assets.chucknorris.host/img/avatar/chuck-norris.png",
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  joke.value,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
