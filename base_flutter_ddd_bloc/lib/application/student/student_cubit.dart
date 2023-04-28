import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/student/i_student_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';


class StudentCubit extends Cubit<StudentState> {
  List<Student> _students = [];

  StudentCubit() : super(const StudentState.initial());

  getStudents() async {
    print('get list student');
    emit(const StudentState.loading());

    if(_students.isNotEmpty){
      emit(StudentState.loaded(_students));
    }else{
      var studentEither = await GetIt.I.get<IStudentRepository>().getAll();
      studentEither.fold((l) => emit(const StudentState.loaded([])), (r) {
        _students = r;
        emit(StudentState.loaded(_students));
      });
    }

  }

  void addStudent(Student student) {
    _students.add(student);
    emit(StudentState.loaded(_students));
  }

  void updateStudent(Student newStudent) {
    print("befor:${newStudent.toJson()}");
    var indexUpdate = -1;
    for (int index = 0; index < _students.length;index++) {
      if(_students[index].id == newStudent.id){
        indexUpdate = index;
      }
    }
    print("udpate index:${indexUpdate}");

    _students[indexUpdate] = newStudent;
    print("student:${_students[indexUpdate].toJson()}");
    emit(StudentState.loaded(_students));
    emit(const StudentState.updated());
  }

  void deleteStudent(int index) {
    _students.removeAt(index);
    emit(StudentState.loaded(_students));
  }
}
