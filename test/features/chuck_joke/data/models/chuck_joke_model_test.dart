import 'dart:convert';

import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tChuckJoke = ChuckJoke(value: "value", url: 'url');

  test(
    'should be a subclass of ChuckJoke entinty',
    () async {
      // assert
      expect(tChuckJoke, isA<ChuckJoke>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('joke.json')) as Map<String, dynamic>;
        // act
        final result = ChuckJoke.fromJson(jsonMap);
        // expect
        expect(result, tChuckJoke);
      },
    );
  });

  group('toJson', () {
    test(
      'should return a Json map containing the proper data',
      () async {
        // act
        final result = tChuckJoke.toJson();
        // expect
        final expectedJsonMap = {
          "value": "value",
          "url": "url",
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
