import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/modify_status.dart';

part 'add_student_state.freezed.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState({
      @Default(ModifyStatus.none) ModifyStatus addStatus,
      @Default('') String id,
      @Default('') String name,
      @Default('') String description}) = _AddStudentState;
}
