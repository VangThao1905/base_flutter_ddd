// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InboxFailure {
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
    required TResult Function(InboxFailureUnexpected value) unexpected,
    required TResult Function(InboxFailureServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxFailureCopyWith<$Res> {
  factory $InboxFailureCopyWith(
          InboxFailure value, $Res Function(InboxFailure) then) =
      _$InboxFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxFailureCopyWithImpl<$Res> implements $InboxFailureCopyWith<$Res> {
  _$InboxFailureCopyWithImpl(this._value, this._then);

  final InboxFailure _value;
  // ignore: unused_field
  final $Res Function(InboxFailure) _then;
}

/// @nodoc
abstract class _$$InboxFailureUnexpectedCopyWith<$Res> {
  factory _$$InboxFailureUnexpectedCopyWith(_$InboxFailureUnexpected value,
          $Res Function(_$InboxFailureUnexpected) then) =
      __$$InboxFailureUnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InboxFailureUnexpectedCopyWithImpl<$Res>
    extends _$InboxFailureCopyWithImpl<$Res>
    implements _$$InboxFailureUnexpectedCopyWith<$Res> {
  __$$InboxFailureUnexpectedCopyWithImpl(_$InboxFailureUnexpected _value,
      $Res Function(_$InboxFailureUnexpected) _then)
      : super(_value, (v) => _then(v as _$InboxFailureUnexpected));

  @override
  _$InboxFailureUnexpected get _value =>
      super._value as _$InboxFailureUnexpected;
}

/// @nodoc

class _$InboxFailureUnexpected
    with DiagnosticableTreeMixin
    implements InboxFailureUnexpected {
  const _$InboxFailureUnexpected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'InboxFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InboxFailureUnexpected);
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
    required TResult Function(InboxFailureUnexpected value) unexpected,
    required TResult Function(InboxFailureServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class InboxFailureUnexpected implements InboxFailure {
  const factory InboxFailureUnexpected() = _$InboxFailureUnexpected;
}

/// @nodoc
abstract class _$$InboxFailureServerErrorCopyWith<$Res> {
  factory _$$InboxFailureServerErrorCopyWith(_$InboxFailureServerError value,
          $Res Function(_$InboxFailureServerError) then) =
      __$$InboxFailureServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$InboxFailureServerErrorCopyWithImpl<$Res>
    extends _$InboxFailureCopyWithImpl<$Res>
    implements _$$InboxFailureServerErrorCopyWith<$Res> {
  __$$InboxFailureServerErrorCopyWithImpl(_$InboxFailureServerError _value,
      $Res Function(_$InboxFailureServerError) _then)
      : super(_value, (v) => _then(v as _$InboxFailureServerError));

  @override
  _$InboxFailureServerError get _value =>
      super._value as _$InboxFailureServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InboxFailureServerError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InboxFailureServerError
    with DiagnosticableTreeMixin
    implements InboxFailureServerError {
  const _$InboxFailureServerError(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxFailure.serverError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxFailure.serverError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxFailureServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InboxFailureServerErrorCopyWith<_$InboxFailureServerError> get copyWith =>
      __$$InboxFailureServerErrorCopyWithImpl<_$InboxFailureServerError>(
          this, _$identity);

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
    required TResult Function(InboxFailureUnexpected value) unexpected,
    required TResult Function(InboxFailureServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxFailureUnexpected value)? unexpected,
    TResult Function(InboxFailureServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class InboxFailureServerError implements InboxFailure {
  const factory InboxFailureServerError(final String message) =
      _$InboxFailureServerError;

  String get message;
  @JsonKey(ignore: true)
  _$$InboxFailureServerErrorCopyWith<_$InboxFailureServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
