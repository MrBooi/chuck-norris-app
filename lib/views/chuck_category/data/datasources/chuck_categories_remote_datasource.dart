import 'dart:convert';

import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/views/chuck_category/domain/entities/chuck_categories.dart';

import 'package:http/http.dart' as http;

abstract class ChuckcategorieRemoteDatasource {
  /// Calls the https://api.chucknorris.io/jokes/categories endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<ChuckCategories> getChuckCategories();
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

    final data = {"categories": json.decode(response.body)};

    if (response.statusCode == 200) {
      return ChuckCategories.fromJson(data);
    } else {
      throw ServerException();
    }
  }
}
