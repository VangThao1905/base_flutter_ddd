import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:injectable/injectable.dart';

@singleton
class StudentMapper {
  Student toDomain(Map<String, dynamic> jsonData) {
    return Student(
        id: jsonData[Constant.id],
        name: jsonData[Constant.name],
        description: jsonData[Constant.description]);
  }
}
