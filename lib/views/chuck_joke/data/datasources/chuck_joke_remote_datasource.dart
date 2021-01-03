import 'dart:convert';

import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';

import 'package:http/http.dart' as http;

abstract class ChuckJokeRemoteDatasource {
  /// Calls the https://api.chucknorris.io/jokes/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<ChuckJoke> getRandomChuckJoke();

  /// Calls the https://api.chucknorris.io/jokes/random?category={category}endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<ChuckJoke> getRandomChuckCategoryByCategoryText(String query);
}

class ChuckJokeRemoteDatasourceImpl implements ChuckJokeRemoteDatasource {
  final http.Client client;

  ChuckJokeRemoteDatasourceImpl(this.client);

  @override
  Future<ChuckJoke> getRandomChuckJoke() async {
    final url = "https://api.chucknorris.io/jokes/random";

    final response = await client.get(url, headers: {
      'content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return ChuckJoke.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ChuckJoke> getRandomChuckCategoryByCategoryText(String query) async {
    final url = "https://api.chucknorris.io/jokes/random?category=$query";

    final response = await client.get(url, headers: {
      'content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return ChuckJoke.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }
}
