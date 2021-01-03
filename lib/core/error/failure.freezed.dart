// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// ignore: unused_element
T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  ServerFailure serverFailure() {
    return const ServerFailure();
  }

// ignore: unused_element
  CacheFailure cacheFailure() {
    return const CacheFailure();
  }

// ignore: unused_element
  SocketFailure socketFailure() {
    return const SocketFailure();
  }

// ignore: unused_element
  InvalidInputFailure invalidInputFailure() {
    return const InvalidInputFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
    @required Result socketFailure(),
    @required Result invalidInputFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    Result socketFailure(),
    Result invalidInputFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
    @required Result socketFailure(SocketFailure value),
    @required Result invalidInputFailure(InvalidInputFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    Result socketFailure(SocketFailure value),
    Result invalidInputFailure(InvalidInputFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc
class _$ServerFailure with DiagnosticableTreeMixin implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.serverFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
    @required Result socketFailure(),
    @required Result invalidInputFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    Result socketFailure(),
    Result invalidInputFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
    @required Result socketFailure(SocketFailure value),
    @required Result invalidInputFailure(InvalidInputFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    Result socketFailure(SocketFailure value),
    Result invalidInputFailure(InvalidInputFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;
}

/// @nodoc
class _$CacheFailure with DiagnosticableTreeMixin implements CacheFailure {
  const _$CacheFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.cacheFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.cacheFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
    @required Result socketFailure(),
    @required Result invalidInputFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    Result socketFailure(),
    Result invalidInputFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
    @required Result socketFailure(SocketFailure value),
    @required Result invalidInputFailure(InvalidInputFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    Result socketFailure(SocketFailure value),
    Result invalidInputFailure(InvalidInputFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailure;
}

/// @nodoc
abstract class $SocketFailureCopyWith<$Res> {
  factory $SocketFailureCopyWith(
          SocketFailure value, $Res Function(SocketFailure) then) =
      _$SocketFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $SocketFailureCopyWith<$Res> {
  _$SocketFailureCopyWithImpl(
      SocketFailure _value, $Res Function(SocketFailure) _then)
      : super(_value, (v) => _then(v as SocketFailure));

  @override
  SocketFailure get _value => super._value as SocketFailure;
}

/// @nodoc
class _$SocketFailure with DiagnosticableTreeMixin implements SocketFailure {
  const _$SocketFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.socketFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.socketFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SocketFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
    @required Result socketFailure(),
    @required Result invalidInputFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return socketFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    Result socketFailure(),
    Result invalidInputFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socketFailure != null) {
      return socketFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
    @required Result socketFailure(SocketFailure value),
    @required Result invalidInputFailure(InvalidInputFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return socketFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    Result socketFailure(SocketFailure value),
    Result invalidInputFailure(InvalidInputFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socketFailure != null) {
      return socketFailure(this);
    }
    return orElse();
  }
}

abstract class SocketFailure implements Failure {
  const factory SocketFailure() = _$SocketFailure;
}

/// @nodoc
abstract class $InvalidInputFailureCopyWith<$Res> {
  factory $InvalidInputFailureCopyWith(
          InvalidInputFailure value, $Res Function(InvalidInputFailure) then) =
      _$InvalidInputFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidInputFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InvalidInputFailureCopyWith<$Res> {
  _$InvalidInputFailureCopyWithImpl(
      InvalidInputFailure _value, $Res Function(InvalidInputFailure) _then)
      : super(_value, (v) => _then(v as InvalidInputFailure));

  @override
  InvalidInputFailure get _value => super._value as InvalidInputFailure;
}

/// @nodoc
class _$InvalidInputFailure
    with DiagnosticableTreeMixin
    implements InvalidInputFailure {
  const _$InvalidInputFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.invalidInputFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Failure.invalidInputFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidInputFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverFailure(),
    @required Result cacheFailure(),
    @required Result socketFailure(),
    @required Result invalidInputFailure(),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return invalidInputFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverFailure(),
    Result cacheFailure(),
    Result socketFailure(),
    Result invalidInputFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidInputFailure != null) {
      return invalidInputFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
    @required Result socketFailure(SocketFailure value),
    @required Result invalidInputFailure(InvalidInputFailure value),
  }) {
    assert(serverFailure != null);
    assert(cacheFailure != null);
    assert(socketFailure != null);
    assert(invalidInputFailure != null);
    return invalidInputFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    Result socketFailure(SocketFailure value),
    Result invalidInputFailure(InvalidInputFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidInputFailure != null) {
      return invalidInputFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure implements Failure {
  const factory InvalidInputFailure() = _$InvalidInputFailure;
}
