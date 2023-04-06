// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$APIResponse {
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $APIResponseCopyWith<APIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<$Res> {
  factory $APIResponseCopyWith(
          APIResponse value, $Res Function(APIResponse) then) =
      _$APIResponseCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$APIResponseCopyWithImpl<$Res> implements $APIResponseCopyWith<$Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  final APIResponse _value;
  // ignore: unused_field
  final $Res Function(APIResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_APIResponseCopyWith<$Res>
    implements $APIResponseCopyWith<$Res> {
  factory _$$_APIResponseCopyWith(
          _$_APIResponse value, $Res Function(_$_APIResponse) then) =
      __$$_APIResponseCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$_APIResponseCopyWithImpl<$Res> extends _$APIResponseCopyWithImpl<$Res>
    implements _$$_APIResponseCopyWith<$Res> {
  __$$_APIResponseCopyWithImpl(
      _$_APIResponse _value, $Res Function(_$_APIResponse) _then)
      : super(_value, (v) => _then(v as _$_APIResponse));

  @override
  _$_APIResponse get _value => super._value as _$_APIResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_APIResponse(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_APIResponse implements _APIResponse {
  const _$_APIResponse({final Map<String, dynamic> data = const {}})
      : _data = data;

  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'APIResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_APIResponseCopyWith<_$_APIResponse> get copyWith =>
      __$$_APIResponseCopyWithImpl<_$_APIResponse>(this, _$identity);
}

abstract class _APIResponse implements APIResponse {
  const factory _APIResponse({final Map<String, dynamic> data}) =
      _$_APIResponse;

  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_APIResponseCopyWith<_$_APIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
