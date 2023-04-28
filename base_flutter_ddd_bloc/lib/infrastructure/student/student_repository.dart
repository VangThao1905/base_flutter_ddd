import 'package:base_flutter_ddd_bloc/domain/student/i_student_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student_failure.dart';
import 'package:base_flutter_ddd_bloc/infrastructure/datasource/core/api_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../datasource/remote/student_service.dart';
import 'student_mapper.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@Injectable(as: IStudentRepository)
class StudentRepository implements IStudentRepository {
  final StudentService _studentService;

  final StudentMapper studentMapper;

  StudentRepository(this._studentService, this.studentMapper);

  @override
  Future<Either<StudentFailure, List<Student>>> getAll() async {
    try {
      return right((await _studentService.getList())
          .map((e) => studentMapper.toDomain(e))
          .toList());
    } on APIException catch (e) {
      print('Error student:$e');
      return left(StudentFailure.serverError(e.message));
    }
  }

  @override
  Future<Either<bool, bool>> update(int studentId) async {
    try {
      return right(true);
    } catch (e) {
      return left(false);
    }
  }
}
