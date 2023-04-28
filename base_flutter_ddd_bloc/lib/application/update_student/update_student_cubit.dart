import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/update_student/update_student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/load_data_status.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateStudentCubit extends Cubit<UpdateStudentState> {
  UpdateStudentCubit() : super(const UpdateStudentState());

  Future<void> init(Student student) async {
    emit(state.copyWith(
        initStatus: LoadDataStatus.loading,
        student: student,
        id: student.id,
        name: student.name,
        description: student.description));
    emit(state.copyWith(initStatus: LoadDataStatus.success));
  }

  Future<void> updateContact(Student newStudent) async {
    emit(state.copyWith(updateStatus: ModifyStatus.processing));

    Future.delayed(const Duration(seconds: 1), () {
      GetIt.I.get<StudentCubit>().updateStudent(newStudent);
      emit(state.copyWith(
          updateStatus: ModifyStatus.done,
          id: state.id,
          name: state.name,
          description: state.description));
    });
  }

  UpdateStudentState getState() => state;
}
