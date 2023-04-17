import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:dartz/dartz.dart';

import 'student_failure.dart';

abstract class IStudentRepository {
  Future<Either<StudentFailure, List<Student>>> getAll(int page);
}