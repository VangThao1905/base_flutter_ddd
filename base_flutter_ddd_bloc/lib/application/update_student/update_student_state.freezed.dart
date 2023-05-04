// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateStudentState {
  Student get student => throw _privateConstructorUsedError;
  LoadDataStatus get initStatus => throw _privateConstructorUsedError;
  ModifyStatus get updateStatus => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateStudentStateCopyWith<UpdateStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStudentStateCopyWith<$Res> {
  factory $UpdateStudentStateCopyWith(
          UpdateStudentState value, $Res Function(UpdateStudentState) then) =
      _$UpdateStudentStateCopyWithImpl<$Res>;
  $Res call(
      {Student student,
      LoadDataStatus initStatus,
      ModifyStatus updateStatus,
      int id,
      String name,
      String description});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$UpdateStudentStateCopyWithImpl<$Res>
    implements $UpdateStudentStateCopyWith<$Res> {
  _$UpdateStudentStateCopyWithImpl(this._value, this._then);

  final UpdateStudentState _value;
  // ignore: unused_field
  final $Res Function(UpdateStudentState) _then;

  @override
  $Res call({
    Object? student = freezed,
    Object? initStatus = freezed,
    Object? updateStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      initStatus: initStatus == freezed
          ? _value.initStatus
          : initStatus // ignore: cast_nullable_to_non_nullable
              as LoadDataStatus,
      updateStatus: updateStatus == freezed
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
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

  @override
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc
abstract class _$$_UpdateStudentStateCopyWith<$Res>
    implements $UpdateStudentStateCopyWith<$Res> {
  factory _$$_UpdateStudentStateCopyWith(_$_UpdateStudentState value,
          $Res Function(_$_UpdateStudentState) then) =
      __$$_UpdateStudentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Student student,
      LoadDataStatus initStatus,
      ModifyStatus updateStatus,
      int id,
      String name,
      String description});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$_UpdateStudentStateCopyWithImpl<$Res>
    extends _$UpdateStudentStateCopyWithImpl<$Res>
    implements _$$_UpdateStudentStateCopyWith<$Res> {
  __$$_UpdateStudentStateCopyWithImpl(
      _$_UpdateStudentState _value, $Res Function(_$_UpdateStudentState) _then)
      : super(_value, (v) => _then(v as _$_UpdateStudentState));

  @override
  _$_UpdateStudentState get _value => super._value as _$_UpdateStudentState;

  @override
  $Res call({
    Object? student = freezed,
    Object? initStatus = freezed,
    Object? updateStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_UpdateStudentState(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      initStatus: initStatus == freezed
          ? _value.initStatus
          : initStatus // ignore: cast_nullable_to_non_nullable
              as LoadDataStatus,
      updateStatus: updateStatus == freezed
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
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

class _$_UpdateStudentState
    with DiagnosticableTreeMixin
    implements _UpdateStudentState {
  const _$_UpdateStudentState(
      {this.student = const Student(),
      this.initStatus = LoadDataStatus.loading,
      this.updateStatus = ModifyStatus.none,
      this.id = 0,
      this.name = '',
      this.description = ''});

  @override
  @JsonKey()
  final Student student;
  @override
  @JsonKey()
  final LoadDataStatus initStatus;
  @override
  @JsonKey()
  final ModifyStatus updateStatus;
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
    return 'UpdateStudentState(student: $student, initStatus: $initStatus, updateStatus: $updateStatus, id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateStudentState'))
      ..add(DiagnosticsProperty('student', student))
      ..add(DiagnosticsProperty('initStatus', initStatus))
      ..add(DiagnosticsProperty('updateStatus', updateStatus))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateStudentState &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality()
                .equals(other.initStatus, initStatus) &&
            const DeepCollectionEquality()
                .equals(other.updateStatus, updateStatus) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(initStatus),
      const DeepCollectionEquality().hash(updateStatus),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateStudentStateCopyWith<_$_UpdateStudentState> get copyWith =>
      __$$_UpdateStudentStateCopyWithImpl<_$_UpdateStudentState>(
          this, _$identity);
}

abstract class _UpdateStudentState implements UpdateStudentState {
  const factory _UpdateStudentState(
      {final Student student,
      final LoadDataStatus initStatus,
      final ModifyStatus updateStatus,
      final int id,
      final String name,
      final String description}) = _$_UpdateStudentState;

  @override
  Student get student;
  @override
  LoadDataStatus get initStatus;
  @override
  ModifyStatus get updateStatus;
  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateStudentStateCopyWith<_$_UpdateStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
