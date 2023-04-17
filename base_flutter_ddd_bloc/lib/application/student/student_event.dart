import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_event.freezed.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.fetch(int pageKey) = StudentEventFetch;

  const factory StudentEvent.init() = StudentEventInit;

  const factory StudentEvent.refresh() = StudentEventRefresh;
}