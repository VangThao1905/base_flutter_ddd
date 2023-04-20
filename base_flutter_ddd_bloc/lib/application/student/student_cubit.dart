import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:bloc/bloc.dart';

class StudentCubit extends Cubit<StudentState> {
  final List<Student> _students = [];

  StudentCubit() : super(const StudentState.loading());

  void getStudents() {
    emit(const StudentState.loading());
    emit(StudentState.loaded(_students));
  }

  void addStudent(Student student) {
    _students.add(student);
    emit(StudentState.loaded(_students));
  }

  void updateStudent(int index, Student student) {
    _students[index] = student;
    emit(StudentState.loaded(_students));
  }

  void deleteStudent(int index) {
    _students.removeAt(index);
    emit(StudentState.loaded(_students));
  }
}
