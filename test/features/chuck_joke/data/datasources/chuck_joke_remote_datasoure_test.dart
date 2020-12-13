import 'dart:convert';

import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/views/chuck_joke/data/datasources/chuck_joke_remote_datasource.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:http/http.dart' as http;

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  ChuckJokeRemoteDatasourceImpl dataSource;
  MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = ChuckJokeRemoteDatasourceImpl(mockHttpClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
      (_) async => http.Response(fixture('joke.json'), 200),
    );
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
      (_) async => http.Response('Opps', 404),
    );
  }

  group('getRandomChuckJoke', () {
    final jsonMapDecode =
        json.decode(fixture('joke.json')) as Map<String, dynamic>;
    final tChuckModel = ChuckJoke.fromJson(jsonMapDecode);
    test(
        '''should perform a GET request on a URL with the number being the endpoint and with application/json header''',
        () {
      // arrange
      setUpMockHttpClientSuccess200();
      // act
      dataSource.getRandomChuckJoke();
      // assert
      verify(
        mockHttpClient.get('https://api.chucknorris.io/jokes/random', headers: {
          'content-Type': 'application/json',
        }),
      );
    });

    test('should return ChuckJoke when the response code is 200 (success)',
        () async {
      // arrange
      setUpMockHttpClientSuccess200();
      // act
      final result = await dataSource.getRandomChuckJoke();
      // assert
      expect(result, equals(tChuckModel));
    });

    test('should throw ServerException when the response code is 404 or other',
        () async {
      // arrange
      setUpMockHttpClientFailure404();
      // act
      final call = dataSource.getRandomChuckJoke;
      // assert
      expect(() => call(), throwsA(isInstanceOf<ServerException>()));
    });
  });
}
