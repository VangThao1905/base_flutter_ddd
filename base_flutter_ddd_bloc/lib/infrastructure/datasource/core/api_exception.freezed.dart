// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$APIException {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error_code")
  String get errorCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $APIExceptionCopyWith<APIException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIExceptionCopyWith<$Res> {
  factory $APIExceptionCopyWith(
          APIException value, $Res Function(APIException) then) =
      _$APIExceptionCopyWithImpl<$Res>;
  $Res call({String message, @JsonKey(name: "error_code") String errorCode});
}

/// @nodoc
class _$APIExceptionCopyWithImpl<$Res> implements $APIExceptionCopyWith<$Res> {
  _$APIExceptionCopyWithImpl(this._value, this._then);

  final APIException _value;
  // ignore: unused_field
  final $Res Function(APIException) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_APIExceptionCopyWith<$Res>
    implements $APIExceptionCopyWith<$Res> {
  factory _$$_APIExceptionCopyWith(
          _$_APIException value, $Res Function(_$_APIException) then) =
      __$$_APIExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, @JsonKey(name: "error_code") String errorCode});
}

/// @nodoc
class __$$_APIExceptionCopyWithImpl<$Res>
    extends _$APIExceptionCopyWithImpl<$Res>
    implements _$$_APIExceptionCopyWith<$Res> {
  __$$_APIExceptionCopyWithImpl(
      _$_APIException _value, $Res Function(_$_APIException) _then)
      : super(_value, (v) => _then(v as _$_APIException));

  @override
  _$_APIException get _value => super._value as _$_APIException;

  @override
  $Res call({
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$_APIException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_APIException with DiagnosticableTreeMixin implements _APIException {
  const _$_APIException(
      {this.message = '', @JsonKey(name: "error_code") this.errorCode = ''});

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(name: "error_code")
  final String errorCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'APIException(message: $message, errorCode: $errorCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'APIException'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('errorCode', errorCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(errorCode));

  @JsonKey(ignore: true)
  @override
  _$$_APIExceptionCopyWith<_$_APIException> get copyWith =>
      __$$_APIExceptionCopyWithImpl<_$_APIException>(this, _$identity);
}

abstract class _APIException implements APIException {
  const factory _APIException(
      {final String message,
      @JsonKey(name: "error_code") final String errorCode}) = _$_APIException;

  @override
  String get message;
  @override
  @JsonKey(name: "error_code")
  String get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$_APIExceptionCopyWith<_$_APIException> get copyWith =>
      throw _privateConstructorUsedError;
}
