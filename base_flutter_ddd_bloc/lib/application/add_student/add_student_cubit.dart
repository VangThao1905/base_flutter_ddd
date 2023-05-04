import 'package:base_flutter_ddd_bloc/application/add_student/add_student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddStudentCubit extends Cubit<AddStudentState> {
  AddStudentCubit()
      : super(const AddStudentState());

  void init() {
    state.copyWith(addStatus: ModifyStatus.none);
  }

  void addStudent() {}

  AddStudentState getState() => state;
}
