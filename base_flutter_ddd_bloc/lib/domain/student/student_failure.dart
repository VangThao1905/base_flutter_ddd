import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_failure.freezed.dart';

@freezed
class StudentFailure with _$StudentFailure {
  const factory StudentFailure.unexpected() = StudentFailureUnexpected;
  const factory StudentFailure.serverError(String message) = StudentFailureServerError;
}