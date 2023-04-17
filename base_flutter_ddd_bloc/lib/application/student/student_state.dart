import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'student_state.freezed.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState(
      {@Default([]) List<Student> listInbox,
      @Default('') String errorMessage,
      PagingController<int, Student>? pageController}) = _StudentState;

  factory StudentState.initial() => StudentState(
        listInbox: [const Student()],
        pageController: PagingController<int, Student>(firstPageKey: 1),
      );
}
