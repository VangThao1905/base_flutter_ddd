// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStudentState {
  ModifyStatus get addStatus => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStudentStateCopyWith<AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentStateCopyWith<$Res> {
  factory $AddStudentStateCopyWith(
          AddStudentState value, $Res Function(AddStudentState) then) =
      _$AddStudentStateCopyWithImpl<$Res>;
  $Res call({ModifyStatus addStatus, int id, String name, String description});
}

/// @nodoc
class _$AddStudentStateCopyWithImpl<$Res>
    implements $AddStudentStateCopyWith<$Res> {
  _$AddStudentStateCopyWithImpl(this._value, this._then);

  final AddStudentState _value;
  // ignore: unused_field
  final $Res Function(AddStudentState) _then;

  @override
  $Res call({
    Object? addStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus // ignore: cast_nullable_to_non_nullable
              as ModifyStatus,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddStudentStateCopyWith<$Res>
    implements $AddStudentStateCopyWith<$Res> {
  factory _$$_AddStudentStateCopyWith(
          _$_AddStudentState value, $Res Function(_$_AddStudentState) then) =
      __$$_AddStudentStateCopyWithImpl<$Res>;
  @override
  $Res call({ModifyStatus addStatus, int id, String name, String description});
}

/// @nodoc
class __$$_AddStudentStateCopyWithImpl<$Res>
    extends _$AddStudentStateCopyWithImpl<$Res>
    implements _$$_AddStudentStateCopyWith<$Res> {
  __$$_AddStudentStateCopyWithImpl(
      _$_AddStudentState _value, $Res Function(_$_AddStudentState) _then)
      : super(_value, (v) => _then(v as _$_AddStudentState));

  @override
  _$_AddStudentState get _value => super._value as _$_AddStudentState;

  @override
  $Res call({
    Object? addStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_AddStudentState(
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus // ignore: cast_nullable_to_non_nullable
              as ModifyStatus,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddStudentState
    with DiagnosticableTreeMixin
    implements _AddStudentState {
  const _$_AddStudentState(
      {this.addStatus = ModifyStatus.none,
      this.id = 0,
      this.name = '',
      this.description = ''});

  @override
  @JsonKey()
  final ModifyStatus addStatus;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddStudentState(addStatus: $addStatus, id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddStudentState'))
      ..add(DiagnosticsProperty('addStatus', addStatus))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStudentState &&
            const DeepCollectionEquality().equals(other.addStatus, addStatus) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addStatus),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      __$$_AddStudentStateCopyWithImpl<_$_AddStudentState>(this, _$identity);
}

abstract class _AddStudentState implements AddStudentState {
  const factory _AddStudentState(
      {final ModifyStatus addStatus,
      final int id,
      final String name,
      final String description}) = _$_AddStudentState;

  @override
  ModifyStatus get addStatus;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_AddStudentStateCopyWith<_$_AddStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
