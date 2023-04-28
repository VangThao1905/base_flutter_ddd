import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'student_state.freezed.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = StudentInitial;

  const factory StudentState.loading() = StudentLoading;

  const factory StudentState.loaded(List<Student> items) = StudentLoaded;

  const factory StudentState.updated() = StudentUpdated;

  const factory StudentState.error(String message) = StudentError;
}
