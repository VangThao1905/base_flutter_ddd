import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/load_data_status.dart';
import '../../domain/core/modify_status.dart';

part 'add_student_state.freezed.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState(
      {@Default(LoadDataStatus.loading) LoadDataStatus initStatus,
      @Default(ModifyStatus.none) ModifyStatus addStatus,
      @Default(0) int id,
      @Default('') String name,
      @Default('') String description}) = _AddStudentState;
}
