import 'package:base_flutter_ddd_bloc/domain/core/load_data_status.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_student_state.freezed.dart';


@freezed
class UpdateStudentState with _$UpdateStudentState {
  const factory UpdateStudentState(
      {@Default(Student()) Student student,
      @Default(LoadDataStatus.loading) LoadDataStatus initStatus,
      @Default(ModifyStatus.none) ModifyStatus updateStatus,
      @Default(0) int id,
      @Default('') String name,
      @Default('') String description}) = _UpdateStudentState;
}
