import 'package:base_flutter_ddd_bloc/domain/student/i_student_repository.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student_failure.dart';
import 'package:base_flutter_ddd_bloc/infrastructure/datasource/core/api_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../datasource/remote/student_ds.dart';
import 'student_mapper.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@Injectable(as: IStudentRepository)
class InboxRepository implements IStudentRepository {
  StudentDS studentDS;

  final StudentMapper studentMapper;

  InboxRepository(this.studentDS, this.studentMapper);

  @override
  Future<Either<StudentFailure, List<Student>>> getAll(int page) async {
    try {
      return right((await studentDS.getList(page))
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
