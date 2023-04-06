// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inbox _$InboxFromJson(Map<String, dynamic> json) {
  return _Inbox.fromJson(json);
}

/// @nodoc
mixin _$Inbox {
  int get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get buttonContent => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InboxCopyWith<Inbox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxCopyWith<$Res> {
  factory $InboxCopyWith(Inbox value, $Res Function(Inbox) then) =
      _$InboxCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int type,
      String dateTime,
      String link,
      String content,
      String buttonContent,
      bool read});
}

/// @nodoc
class _$InboxCopyWithImpl<$Res> implements $InboxCopyWith<$Res> {
  _$InboxCopyWithImpl(this._value, this._then);

  final Inbox _value;
  // ignore: unused_field
  final $Res Function(Inbox) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? dateTime = freezed,
    Object? link = freezed,
    Object? content = freezed,
    Object? buttonContent = freezed,
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      buttonContent: buttonContent == freezed
          ? _value.buttonContent
          : buttonContent // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InboxCopyWith<$Res> implements $InboxCopyWith<$Res> {
  factory _$$_InboxCopyWith(_$_Inbox value, $Res Function(_$_Inbox) then) =
      __$$_InboxCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int type,
      String dateTime,
      String link,
      String content,
      String buttonContent,
      bool read});
}

/// @nodoc
class __$$_InboxCopyWithImpl<$Res> extends _$InboxCopyWithImpl<$Res>
    implements _$$_InboxCopyWith<$Res> {
  __$$_InboxCopyWithImpl(_$_Inbox _value, $Res Function(_$_Inbox) _then)
      : super(_value, (v) => _then(v as _$_Inbox));

  @override
  _$_Inbox get _value => super._value as _$_Inbox;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? dateTime = freezed,
    Object? link = freezed,
    Object? content = freezed,
    Object? buttonContent = freezed,
    Object? read = freezed,
  }) {
    return _then(_$_Inbox(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      buttonContent: buttonContent == freezed
          ? _value.buttonContent
          : buttonContent // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inbox extends _Inbox {
  const _$_Inbox(
      {this.id = 0,
      this.type = 0,
      this.dateTime = '',
      this.link = '',
      this.content = '',
      this.buttonContent = '',
      this.read = false})
      : super._();

  factory _$_Inbox.fromJson(Map<String, dynamic> json) =>
      _$$_InboxFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int type;
  @override
  @JsonKey()
  final String dateTime;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String buttonContent;
  @override
  @JsonKey()
  final bool read;

  @override
  String toString() {
    return 'Inbox(id: $id, type: $type, dateTime: $dateTime, link: $link, content: $content, buttonContent: $buttonContent, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inbox &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.buttonContent, buttonContent) &&
            const DeepCollectionEquality().equals(other.read, read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(buttonContent),
      const DeepCollectionEquality().hash(read));

  @JsonKey(ignore: true)
  @override
  _$$_InboxCopyWith<_$_Inbox> get copyWith =>
      __$$_InboxCopyWithImpl<_$_Inbox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InboxToJson(this);
  }
}

abstract class _Inbox extends Inbox {
  const factory _Inbox(
      {final int id,
      final int type,
      final String dateTime,
      final String link,
      final String content,
      final String buttonContent,
      final bool read}) = _$_Inbox;
  const _Inbox._() : super._();

  factory _Inbox.fromJson(Map<String, dynamic> json) = _$_Inbox.fromJson;

  @override
  int get id;
  @override
  int get type;
  @override
  String get dateTime;
  @override
  String get link;
  @override
  String get content;
  @override
  String get buttonContent;
  @override
  bool get read;
  @override
  @JsonKey(ignore: true)
  _$$_InboxCopyWith<_$_Inbox> get copyWith =>
      throw _privateConstructorUsedError;
}
