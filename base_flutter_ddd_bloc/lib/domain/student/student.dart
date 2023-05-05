import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.g.dart';
part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const Student._();

  const factory Student({
    @Default('') String id,
    @Default('') String name,
    @Default('') String description,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

  bool get isEmpty => id == '';
}
