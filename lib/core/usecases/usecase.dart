import 'package:chuck_norris/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usecase.freezed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

@freezed
abstract class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
