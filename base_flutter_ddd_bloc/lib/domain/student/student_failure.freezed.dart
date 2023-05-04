// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentFailureUnexpected value) unexpected,
    required TResult Function(StudentFailureServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentFailureCopyWith<$Res> {
  factory $StudentFailureCopyWith(
          StudentFailure value, $Res Function(StudentFailure) then) =
      _$StudentFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StudentFailureCopyWithImpl<$Res>
    implements $StudentFailureCopyWith<$Res> {
  _$StudentFailureCopyWithImpl(this._value, this._then);

  final StudentFailure _value;
  // ignore: unused_field
  final $Res Function(StudentFailure) _then;
}

/// @nodoc
abstract class _$$StudentFailureUnexpectedCopyWith<$Res> {
  factory _$$StudentFailureUnexpectedCopyWith(_$StudentFailureUnexpected value,
          $Res Function(_$StudentFailureUnexpected) then) =
      __$$StudentFailureUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentFailureUnexpectedCopyWithImpl<$Res>
    extends _$StudentFailureCopyWithImpl<$Res>
    implements _$$StudentFailureUnexpectedCopyWith<$Res> {
  __$$StudentFailureUnexpectedCopyWithImpl(_$StudentFailureUnexpected _value,
      $Res Function(_$StudentFailureUnexpected) _then)
      : super(_value, (v) => _then(v as _$StudentFailureUnexpected));

  @override
  _$StudentFailureUnexpected get _value =>
      super._value as _$StudentFailureUnexpected;
}

/// @nodoc

class _$StudentFailureUnexpected
    with DiagnosticableTreeMixin
    implements StudentFailureUnexpected {
  const _$StudentFailureUnexpected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StudentFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentFailureUnexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentFailureUnexpected value) unexpected,
    required TResult Function(StudentFailureServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class StudentFailureUnexpected implements StudentFailure {
  const factory StudentFailureUnexpected() = _$StudentFailureUnexpected;
}

/// @nodoc
abstract class _$$StudentFailureServerErrorCopyWith<$Res> {
  factory _$$StudentFailureServerErrorCopyWith(
          _$StudentFailureServerError value,
          $Res Function(_$StudentFailureServerError) then) =
      __$$StudentFailureServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$StudentFailureServerErrorCopyWithImpl<$Res>
    extends _$StudentFailureCopyWithImpl<$Res>
    implements _$$StudentFailureServerErrorCopyWith<$Res> {
  __$$StudentFailureServerErrorCopyWithImpl(_$StudentFailureServerError _value,
      $Res Function(_$StudentFailureServerError) _then)
      : super(_value, (v) => _then(v as _$StudentFailureServerError));

  @override
  _$StudentFailureServerError get _value =>
      super._value as _$StudentFailureServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$StudentFailureServerError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentFailureServerError
    with DiagnosticableTreeMixin
    implements StudentFailureServerError {
  const _$StudentFailureServerError(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudentFailure.serverError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudentFailure.serverError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentFailureServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$StudentFailureServerErrorCopyWith<_$StudentFailureServerError>
      get copyWith => __$$StudentFailureServerErrorCopyWithImpl<
          _$StudentFailureServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(String message) serverError,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(String message)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentFailureUnexpected value) unexpected,
    required TResult Function(StudentFailureServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentFailureUnexpected value)? unexpected,
    TResult Function(StudentFailureServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class StudentFailureServerError implements StudentFailure {
  const factory StudentFailureServerError(final String message) =
      _$StudentFailureServerError;

  String get message;
  @JsonKey(ignore: true)
  _$$StudentFailureServerErrorCopyWith<_$StudentFailureServerError>
      get copyWith => throw _privateConstructorUsedError;
}
