import 'dart:math';

import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/student/i_student_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';


class StudentCubit extends Cubit<StudentState> {
  List<Student> _students = [];

  StudentCubit() : super(const StudentState.initial());

  refresh() async {
    print('refresh list student');
    emit(const StudentState.loading());
    emit(StudentState.loaded(_students));
  }

  getStudents() async {
    print('get list student');
    _students.clear();
    emit(const StudentState.loading());
    var studentEither = await GetIt.I.get<IStudentRepository>().getAll();
    studentEither.fold((l) => emit(const StudentState.loaded([])), (r) {
      _students = r;
      emit(StudentState.loaded(_students));
    });

  }

  void addStudent(Student student) {
    _students.add(student);
    emit(StudentState.loaded(_students));
  }

  void updateStudentList(Student newStudent) {
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

  void addStudentToList(Student newStudent) {
    _students.add(newStudent);
    emit(StudentState.loaded(_students));
    emit(const StudentState.updated());
  }

  void deleteStudent(String studentId) {
    // emit(const StudentState.loading());
    print("list len:${_students.length}");
    for (int index = 0;index < _students.length;index++) {
      if(_students[index].id == studentId) _students.removeAt(index);
    }
    print("list len:${_students.length}");
    // if(_students.isNotEmpty){
    //   getStudents();
    // }else{
    //   emit(const StudentState.loaded([]));
    // }
    emit(StudentState.loaded(_students));
    emit(const StudentState.updated());
  }
}
