import 'package:base_flutter_ddd_bloc/application/add_student/add_student_state.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddStudentCubit extends Cubit<AddStudentState> {
  AddStudentCubit() : super(const AddStudentState());

  void init() {
    state.copyWith(addStatus: ModifyStatus.none);
  }

  void addStudent(Student student) {
    state.copyWith(addStatus: ModifyStatus.processing);
    GetIt.I.get<StudentCubit>().addStudentToList(student);
    state.copyWith(
        id: student.id,
        name: student.name,
        description: student.description);
    state.copyWith(addStatus: ModifyStatus.done);
  }

  AddStudentState getState() => state;
}
