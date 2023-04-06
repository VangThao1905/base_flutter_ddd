// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InboxEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, int pageKey) fetch,
    required TResult Function(int type) init,
    required TResult Function(int type) refresh,
    required TResult Function(int inboxId) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxEventFetch value) fetch,
    required TResult Function(InboxEventInit value) init,
    required TResult Function(InboxEventRefresh value) refresh,
    required TResult Function(InboxEventRead value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxEventCopyWith<$Res> {
  factory $InboxEventCopyWith(
          InboxEvent value, $Res Function(InboxEvent) then) =
      _$InboxEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxEventCopyWithImpl<$Res> implements $InboxEventCopyWith<$Res> {
  _$InboxEventCopyWithImpl(this._value, this._then);

  final InboxEvent _value;
  // ignore: unused_field
  final $Res Function(InboxEvent) _then;
}

/// @nodoc
abstract class _$$InboxEventFetchCopyWith<$Res> {
  factory _$$InboxEventFetchCopyWith(
          _$InboxEventFetch value, $Res Function(_$InboxEventFetch) then) =
      __$$InboxEventFetchCopyWithImpl<$Res>;
  $Res call({int type, int pageKey});
}

/// @nodoc
class __$$InboxEventFetchCopyWithImpl<$Res>
    extends _$InboxEventCopyWithImpl<$Res>
    implements _$$InboxEventFetchCopyWith<$Res> {
  __$$InboxEventFetchCopyWithImpl(
      _$InboxEventFetch _value, $Res Function(_$InboxEventFetch) _then)
      : super(_value, (v) => _then(v as _$InboxEventFetch));

  @override
  _$InboxEventFetch get _value => super._value as _$InboxEventFetch;

  @override
  $Res call({
    Object? type = freezed,
    Object? pageKey = freezed,
  }) {
    return _then(_$InboxEventFetch(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      pageKey == freezed
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboxEventFetch
    with DiagnosticableTreeMixin
    implements InboxEventFetch {
  const _$InboxEventFetch(this.type, this.pageKey);

  @override
  final int type;
  @override
  final int pageKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxEvent.fetch(type: $type, pageKey: $pageKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxEvent.fetch'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('pageKey', pageKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxEventFetch &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.pageKey, pageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(pageKey));

  @JsonKey(ignore: true)
  @override
  _$$InboxEventFetchCopyWith<_$InboxEventFetch> get copyWith =>
      __$$InboxEventFetchCopyWithImpl<_$InboxEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, int pageKey) fetch,
    required TResult Function(int type) init,
    required TResult Function(int type) refresh,
    required TResult Function(int inboxId) read,
  }) {
    return fetch(type, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
  }) {
    return fetch?.call(type, pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(type, pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxEventFetch value) fetch,
    required TResult Function(InboxEventInit value) init,
    required TResult Function(InboxEventRefresh value) refresh,
    required TResult Function(InboxEventRead value) read,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class InboxEventFetch implements InboxEvent {
  const factory InboxEventFetch(final int type, final int pageKey) =
      _$InboxEventFetch;

  int get type;
  int get pageKey;
  @JsonKey(ignore: true)
  _$$InboxEventFetchCopyWith<_$InboxEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InboxEventInitCopyWith<$Res> {
  factory _$$InboxEventInitCopyWith(
          _$InboxEventInit value, $Res Function(_$InboxEventInit) then) =
      __$$InboxEventInitCopyWithImpl<$Res>;
  $Res call({int type});
}

/// @nodoc
class __$$InboxEventInitCopyWithImpl<$Res>
    extends _$InboxEventCopyWithImpl<$Res>
    implements _$$InboxEventInitCopyWith<$Res> {
  __$$InboxEventInitCopyWithImpl(
      _$InboxEventInit _value, $Res Function(_$InboxEventInit) _then)
      : super(_value, (v) => _then(v as _$InboxEventInit));

  @override
  _$InboxEventInit get _value => super._value as _$InboxEventInit;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$InboxEventInit(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboxEventInit with DiagnosticableTreeMixin implements InboxEventInit {
  const _$InboxEventInit(this.type);

  @override
  final int type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxEvent.init(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxEvent.init'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxEventInit &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$InboxEventInitCopyWith<_$InboxEventInit> get copyWith =>
      __$$InboxEventInitCopyWithImpl<_$InboxEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, int pageKey) fetch,
    required TResult Function(int type) init,
    required TResult Function(int type) refresh,
    required TResult Function(int inboxId) read,
  }) {
    return init(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
  }) {
    return init?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxEventFetch value) fetch,
    required TResult Function(InboxEventInit value) init,
    required TResult Function(InboxEventRefresh value) refresh,
    required TResult Function(InboxEventRead value) read,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InboxEventInit implements InboxEvent {
  const factory InboxEventInit(final int type) = _$InboxEventInit;

  int get type;
  @JsonKey(ignore: true)
  _$$InboxEventInitCopyWith<_$InboxEventInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InboxEventRefreshCopyWith<$Res> {
  factory _$$InboxEventRefreshCopyWith(
          _$InboxEventRefresh value, $Res Function(_$InboxEventRefresh) then) =
      __$$InboxEventRefreshCopyWithImpl<$Res>;
  $Res call({int type});
}

/// @nodoc
class __$$InboxEventRefreshCopyWithImpl<$Res>
    extends _$InboxEventCopyWithImpl<$Res>
    implements _$$InboxEventRefreshCopyWith<$Res> {
  __$$InboxEventRefreshCopyWithImpl(
      _$InboxEventRefresh _value, $Res Function(_$InboxEventRefresh) _then)
      : super(_value, (v) => _then(v as _$InboxEventRefresh));

  @override
  _$InboxEventRefresh get _value => super._value as _$InboxEventRefresh;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$InboxEventRefresh(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboxEventRefresh
    with DiagnosticableTreeMixin
    implements InboxEventRefresh {
  const _$InboxEventRefresh(this.type);

  @override
  final int type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxEvent.refresh(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxEvent.refresh'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxEventRefresh &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$InboxEventRefreshCopyWith<_$InboxEventRefresh> get copyWith =>
      __$$InboxEventRefreshCopyWithImpl<_$InboxEventRefresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, int pageKey) fetch,
    required TResult Function(int type) init,
    required TResult Function(int type) refresh,
    required TResult Function(int inboxId) read,
  }) {
    return refresh(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
  }) {
    return refresh?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxEventFetch value) fetch,
    required TResult Function(InboxEventInit value) init,
    required TResult Function(InboxEventRefresh value) refresh,
    required TResult Function(InboxEventRead value) read,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class InboxEventRefresh implements InboxEvent {
  const factory InboxEventRefresh(final int type) = _$InboxEventRefresh;

  int get type;
  @JsonKey(ignore: true)
  _$$InboxEventRefreshCopyWith<_$InboxEventRefresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InboxEventReadCopyWith<$Res> {
  factory _$$InboxEventReadCopyWith(
          _$InboxEventRead value, $Res Function(_$InboxEventRead) then) =
      __$$InboxEventReadCopyWithImpl<$Res>;
  $Res call({int inboxId});
}

/// @nodoc
class __$$InboxEventReadCopyWithImpl<$Res>
    extends _$InboxEventCopyWithImpl<$Res>
    implements _$$InboxEventReadCopyWith<$Res> {
  __$$InboxEventReadCopyWithImpl(
      _$InboxEventRead _value, $Res Function(_$InboxEventRead) _then)
      : super(_value, (v) => _then(v as _$InboxEventRead));

  @override
  _$InboxEventRead get _value => super._value as _$InboxEventRead;

  @override
  $Res call({
    Object? inboxId = freezed,
  }) {
    return _then(_$InboxEventRead(
      inboxId == freezed
          ? _value.inboxId
          : inboxId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboxEventRead with DiagnosticableTreeMixin implements InboxEventRead {
  const _$InboxEventRead(this.inboxId);

  @override
  final int inboxId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxEvent.read(inboxId: $inboxId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxEvent.read'))
      ..add(DiagnosticsProperty('inboxId', inboxId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxEventRead &&
            const DeepCollectionEquality().equals(other.inboxId, inboxId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inboxId));

  @JsonKey(ignore: true)
  @override
  _$$InboxEventReadCopyWith<_$InboxEventRead> get copyWith =>
      __$$InboxEventReadCopyWithImpl<_$InboxEventRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, int pageKey) fetch,
    required TResult Function(int type) init,
    required TResult Function(int type) refresh,
    required TResult Function(int inboxId) read,
  }) {
    return read(inboxId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
  }) {
    return read?.call(inboxId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, int pageKey)? fetch,
    TResult Function(int type)? init,
    TResult Function(int type)? refresh,
    TResult Function(int inboxId)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(inboxId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxEventFetch value) fetch,
    required TResult Function(InboxEventInit value) init,
    required TResult Function(InboxEventRefresh value) refresh,
    required TResult Function(InboxEventRead value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxEventFetch value)? fetch,
    TResult Function(InboxEventInit value)? init,
    TResult Function(InboxEventRefresh value)? refresh,
    TResult Function(InboxEventRead value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class InboxEventRead implements InboxEvent {
  const factory InboxEventRead(final int inboxId) = _$InboxEventRead;

  int get inboxId;
  @JsonKey(ignore: true)
  _$$InboxEventReadCopyWith<_$InboxEventRead> get copyWith =>
      throw _privateConstructorUsedError;
}
