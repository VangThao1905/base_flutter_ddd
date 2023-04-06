// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Unread _$UnreadFromJson(Map<String, dynamic> json) {
  return _Unread.fromJson(json);
}

/// @nodoc
mixin _$Unread {
  bool get notification => throw _privateConstructorUsedError;
  bool get promotion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnreadCopyWith<Unread> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadCopyWith<$Res> {
  factory $UnreadCopyWith(Unread value, $Res Function(Unread) then) =
      _$UnreadCopyWithImpl<$Res>;
  $Res call({bool notification, bool promotion});
}

/// @nodoc
class _$UnreadCopyWithImpl<$Res> implements $UnreadCopyWith<$Res> {
  _$UnreadCopyWithImpl(this._value, this._then);

  final Unread _value;
  // ignore: unused_field
  final $Res Function(Unread) _then;

  @override
  $Res call({
    Object? notification = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_UnreadCopyWith<$Res> implements $UnreadCopyWith<$Res> {
  factory _$$_UnreadCopyWith(_$_Unread value, $Res Function(_$_Unread) then) =
      __$$_UnreadCopyWithImpl<$Res>;
  @override
  $Res call({bool notification, bool promotion});
}

/// @nodoc
class __$$_UnreadCopyWithImpl<$Res> extends _$UnreadCopyWithImpl<$Res>
    implements _$$_UnreadCopyWith<$Res> {
  __$$_UnreadCopyWithImpl(_$_Unread _value, $Res Function(_$_Unread) _then)
      : super(_value, (v) => _then(v as _$_Unread));

  @override
  _$_Unread get _value => super._value as _$_Unread;

  @override
  $Res call({
    Object? notification = freezed,
    Object? promotion = freezed,
  }) {
    return _then(_$_Unread(
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
@JsonSerializable()
class _$_Unread with DiagnosticableTreeMixin implements _Unread {
  const _$_Unread({this.notification = true, this.promotion = false});

  factory _$_Unread.fromJson(Map<String, dynamic> json) =>
      _$$_UnreadFromJson(json);

  @override
  @JsonKey()
  final bool notification;
  @override
  @JsonKey()
  final bool promotion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Unread(notification: $notification, promotion: $promotion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Unread'))
      ..add(DiagnosticsProperty('notification', notification))
      ..add(DiagnosticsProperty('promotion', promotion));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unread &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality().equals(other.promotion, promotion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(promotion));

  @JsonKey(ignore: true)
  @override
  _$$_UnreadCopyWith<_$_Unread> get copyWith =>
      __$$_UnreadCopyWithImpl<_$_Unread>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnreadToJson(this);
  }
}

abstract class _Unread implements Unread {
  const factory _Unread({final bool notification, final bool promotion}) =
      _$_Unread;

  factory _Unread.fromJson(Map<String, dynamic> json) = _$_Unread.fromJson;

  @override
  bool get notification;
  @override
  bool get promotion;
  @override
  @JsonKey(ignore: true)
  _$$_UnreadCopyWith<_$_Unread> get copyWith =>
      throw _privateConstructorUsedError;
}
