import 'package:base_flutter_ddd_bloc/application/student_udpate/student_update_state.dart';
import 'package:base_flutter_ddd_bloc/domain/core/load_data_status.dart';
import 'package:base_flutter_ddd_bloc/domain/core/modify_status.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';


@injectable
class StudentUpdateCubit extends Cubit<StudentUpdateState> {
  StudentUpdateCubit() : super(const StudentUpdateState());

  Future<void> init(Student student) async {
    emit(state.copyWith(
        initStatus: LoadDataStatus.loading,
        student: student,
        id: student.id,
        name: student.name,
        description: student.description));
    emit(state.copyWith(initStatus: LoadDataStatus.success));
  }

  void setName(String? value) => emit(state.copyWith(name: value ?? ''));

  void setDescription(String? value) =>
      emit(state.copyWith(description: value ?? ''));

  Future<void> updateContact() async {
    emit(state.copyWith(updateStatus: ModifyStatus.processing));

    Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(updateStatus: ModifyStatus.done));
    });
  }

  StudentUpdateState getState() => state;
}
