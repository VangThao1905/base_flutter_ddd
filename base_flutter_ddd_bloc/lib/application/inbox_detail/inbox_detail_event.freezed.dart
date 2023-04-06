// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InboxDetailEvent {
  int get inboxId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int inboxId) getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int inboxId)? getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int inboxId)? getDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxDetailEventGetDetail value) getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxDetailEventGetDetail value)? getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxDetailEventGetDetail value)? getDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxDetailEventCopyWith<InboxDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxDetailEventCopyWith<$Res> {
  factory $InboxDetailEventCopyWith(
          InboxDetailEvent value, $Res Function(InboxDetailEvent) then) =
      _$InboxDetailEventCopyWithImpl<$Res>;
  $Res call({int inboxId});
}

/// @nodoc
class _$InboxDetailEventCopyWithImpl<$Res>
    implements $InboxDetailEventCopyWith<$Res> {
  _$InboxDetailEventCopyWithImpl(this._value, this._then);

  final InboxDetailEvent _value;
  // ignore: unused_field
  final $Res Function(InboxDetailEvent) _then;

  @override
  $Res call({
    Object? inboxId = freezed,
  }) {
    return _then(_value.copyWith(
      inboxId: inboxId == freezed
          ? _value.inboxId
          : inboxId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$InboxDetailEventGetDetailCopyWith<$Res>
    implements $InboxDetailEventCopyWith<$Res> {
  factory _$$InboxDetailEventGetDetailCopyWith(
          _$InboxDetailEventGetDetail value,
          $Res Function(_$InboxDetailEventGetDetail) then) =
      __$$InboxDetailEventGetDetailCopyWithImpl<$Res>;
  @override
  $Res call({int inboxId});
}

/// @nodoc
class __$$InboxDetailEventGetDetailCopyWithImpl<$Res>
    extends _$InboxDetailEventCopyWithImpl<$Res>
    implements _$$InboxDetailEventGetDetailCopyWith<$Res> {
  __$$InboxDetailEventGetDetailCopyWithImpl(_$InboxDetailEventGetDetail _value,
      $Res Function(_$InboxDetailEventGetDetail) _then)
      : super(_value, (v) => _then(v as _$InboxDetailEventGetDetail));

  @override
  _$InboxDetailEventGetDetail get _value =>
      super._value as _$InboxDetailEventGetDetail;

  @override
  $Res call({
    Object? inboxId = freezed,
  }) {
    return _then(_$InboxDetailEventGetDetail(
      inboxId == freezed
          ? _value.inboxId
          : inboxId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InboxDetailEventGetDetail
    with DiagnosticableTreeMixin
    implements InboxDetailEventGetDetail {
  const _$InboxDetailEventGetDetail(this.inboxId);

  @override
  final int inboxId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxDetailEvent.getDetail(inboxId: $inboxId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InboxDetailEvent.getDetail'))
      ..add(DiagnosticsProperty('inboxId', inboxId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxDetailEventGetDetail &&
            const DeepCollectionEquality().equals(other.inboxId, inboxId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inboxId));

  @JsonKey(ignore: true)
  @override
  _$$InboxDetailEventGetDetailCopyWith<_$InboxDetailEventGetDetail>
      get copyWith => __$$InboxDetailEventGetDetailCopyWithImpl<
          _$InboxDetailEventGetDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int inboxId) getDetail,
  }) {
    return getDetail(inboxId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int inboxId)? getDetail,
  }) {
    return getDetail?.call(inboxId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int inboxId)? getDetail,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(inboxId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InboxDetailEventGetDetail value) getDetail,
  }) {
    return getDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InboxDetailEventGetDetail value)? getDetail,
  }) {
    return getDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InboxDetailEventGetDetail value)? getDetail,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(this);
    }
    return orElse();
  }
}

abstract class InboxDetailEventGetDetail implements InboxDetailEvent {
  const factory InboxDetailEventGetDetail(final int inboxId) =
      _$InboxDetailEventGetDetail;

  @override
  int get inboxId;
  @override
  @JsonKey(ignore: true)
  _$$InboxDetailEventGetDetailCopyWith<_$InboxDetailEventGetDetail>
      get copyWith => throw _privateConstructorUsedError;
}
