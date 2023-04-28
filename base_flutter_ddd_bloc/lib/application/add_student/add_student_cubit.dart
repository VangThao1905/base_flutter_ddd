import 'package:base_flutter_ddd_bloc/application/add_student/add_student_state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddStudentCubit extends Cubit<AddStudentState> {
  AddStudentCubit(AddStudentState initialState)
      : super(const AddStudentState());

  void init() {}

  void addStudent() {}

  AddStudentState getState() => state;
}
