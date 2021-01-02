import 'dart:convert';

import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';

import 'package:http/http.dart' as http;

abstract class ChuckcategorieRemoteDatasource {
  /// Calls the https://api.chucknorris.io/jokes/categories endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<ChuckCategories> getChuckCategories();

  /// Calls the https://api.chucknorris.io/jokes/random?category={category}endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<ChuckJoke> getRandomChuckCategoryByCategoryText(String query);
}

class ChuckcategorieRemoteDatasourceImpl
    implements ChuckcategorieRemoteDatasource {
  final http.Client client;

  ChuckcategorieRemoteDatasourceImpl(this.client);

  @override
  Future<ChuckCategories> getChuckCategories() async {
    final url = "https://api.chucknorris.io/jokes/categories";

    final response = await client.get(url, headers: {
      'content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return ChuckCategories.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ChuckJoke> getRandomChuckCategoryByCategoryText(String query) async {
    final url = "https://api.chucknorris.io/jokes/search?query=$query";

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
