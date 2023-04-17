// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'init_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitData _$InitDataFromJson(Map<String, dynamic> json) {
  return _InitData.fromJson(json);
}

/// @nodoc
mixin _$InitData {
  String get accessToken => throw _privateConstructorUsedError;
  String get env => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitDataCopyWith<InitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitDataCopyWith<$Res> {
  factory $InitDataCopyWith(InitData value, $Res Function(InitData) then) =
      _$InitDataCopyWithImpl<$Res>;
  $Res call({String accessToken, String env});
}

/// @nodoc
class _$InitDataCopyWithImpl<$Res> implements $InitDataCopyWith<$Res> {
  _$InitDataCopyWithImpl(this._value, this._then);

  final InitData _value;
  // ignore: unused_field
  final $Res Function(InitData) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? env = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      env: env == freezed
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InitDataCopyWith<$Res> implements $InitDataCopyWith<$Res> {
  factory _$$_InitDataCopyWith(
          _$_InitData value, $Res Function(_$_InitData) then) =
      __$$_InitDataCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String env});
}

/// @nodoc
class __$$_InitDataCopyWithImpl<$Res> extends _$InitDataCopyWithImpl<$Res>
    implements _$$_InitDataCopyWith<$Res> {
  __$$_InitDataCopyWithImpl(
      _$_InitData _value, $Res Function(_$_InitData) _then)
      : super(_value, (v) => _then(v as _$_InitData));

  @override
  _$_InitData get _value => super._value as _$_InitData;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? env = freezed,
  }) {
    return _then(_$_InitData(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      env: env == freezed
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitData extends _InitData with DiagnosticableTreeMixin {
  const _$_InitData({this.accessToken = '', this.env = Env.dev}) : super._();

  factory _$_InitData.fromJson(Map<String, dynamic> json) =>
      _$$_InitDataFromJson(json);

  @override
  @JsonKey()
  final String accessToken;
  @override
  @JsonKey()
  final String env;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitData(accessToken: $accessToken, env: $env)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitData'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('env', env));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitData &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.env, env));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(env));

  @JsonKey(ignore: true)
  @override
  _$$_InitDataCopyWith<_$_InitData> get copyWith =>
      __$$_InitDataCopyWithImpl<_$_InitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitDataToJson(this);
  }
}

abstract class _InitData extends InitData {
  const factory _InitData({final String accessToken, final String env}) =
      _$_InitData;
  const _InitData._() : super._();

  factory _InitData.fromJson(Map<String, dynamic> json) = _$_InitData.fromJson;

  @override
  String get accessToken;
  @override
  String get env;
  @override
  @JsonKey(ignore: true)
  _$$_InitDataCopyWith<_$_InitData> get copyWith =>
      throw _privateConstructorUsedError;
}
