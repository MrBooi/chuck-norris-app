import 'package:chuck_norris/core/error/exception.dart';
import 'package:chuck_norris/core/error/failure.dart';
import 'package:chuck_norris/core/network/network_info.dart';
import 'package:chuck_norris/views/chuck_joke/data/datasources/chuck_joke_remote_datasource.dart';
import 'package:chuck_norris/views/chuck_joke/data/repositories/chuck_joke_repository_impl.dart';
import 'package:chuck_norris/views/chuck_joke/domain/entities/chuck_joke.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock implements ChuckJokeRemoteDatasource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  ChuckJokeRespositoryImpl respository;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();

    respository = ChuckJokeRespositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  group('getRandomChuckJoke', () {
    final tChuckJokeModel = ChuckJoke(value: 'JOKE ', url: '');

    test('should check if the device is online', () {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      respository.getRandomChuckJoke();
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test(
          'should return remote data when the call to remote data source is succefully ',
          () async {
        // arrange
        when(mockRemoteDataSource.getRandomChuckJoke())
            .thenAnswer((_) async => tChuckJokeModel);
        // act
        await respository.getRandomChuckJoke();
        // assert
        verify(mockRemoteDataSource.getRandomChuckJoke());
      });

      test(
          'should return server failure when the call to remote data source is unsuccefully ',
          () async {
        // arrange
        when(mockRemoteDataSource.getRandomChuckJoke())
            .thenThrow(ServerException());
        // act
        final result = await respository.getRandomChuckJoke();
        // assert
        verify(mockRemoteDataSource.getRandomChuckJoke());

        expect(result,
            equals(const Left<ServerFailure, dynamic>(ServerFailure())));
      });
    });
  });
}
