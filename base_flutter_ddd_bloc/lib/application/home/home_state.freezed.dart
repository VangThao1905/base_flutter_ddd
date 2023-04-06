// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  bool get hasToken => throw _privateConstructorUsedError;
  bool get all => throw _privateConstructorUsedError;
  bool get notification => throw _privateConstructorUsedError;
  bool get promotion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({bool hasToken, bool all, bool notification, bool promotion});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? hasToken = freezed,
    Object? all = freezed,
    Object? notification = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_value.copyWith(
      hasToken: hasToken == freezed
          ? _value.hasToken
          : hasToken // ignore: cast_nullable_to_non_nullable
              as bool,
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as bool,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool hasToken, bool all, bool notification, bool promotion});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? hasToken = freezed,
    Object? all = freezed,
    Object? notification = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_$_HomeState(
      hasToken: hasToken == freezed
          ? _value.hasToken
          : hasToken // ignore: cast_nullable_to_non_nullable
              as bool,
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as bool,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.hasToken = false,
      this.all = false,
      this.notification = false,
      this.promotion = false});

  @override
  @JsonKey()
  final bool hasToken;
  @override
  @JsonKey()
  final bool all;
  @override
  @JsonKey()
  final bool notification;
  @override
  @JsonKey()
  final bool promotion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(hasToken: $hasToken, all: $all, notification: $notification, promotion: $promotion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('hasToken', hasToken))
      ..add(DiagnosticsProperty('all', all))
      ..add(DiagnosticsProperty('notification', notification))
      ..add(DiagnosticsProperty('promotion', promotion));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.hasToken, hasToken) &&
            const DeepCollectionEquality().equals(other.all, all) &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality().equals(other.promotion, promotion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasToken),
      const DeepCollectionEquality().hash(all),
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(promotion));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool hasToken,
      final bool all,
      final bool notification,
      final bool promotion}) = _$_HomeState;

  @override
  bool get hasToken;
  @override
  bool get all;
  @override
  bool get notification;
  @override
  bool get promotion;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
