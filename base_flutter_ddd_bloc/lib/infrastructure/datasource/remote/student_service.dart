import 'package:injectable/injectable.dart';

@singleton
class StudentService {
  Future<List<dynamic>> getList() async {
    // String url = '';
    //
    // APIResponse apiResponse = await GetIt.I.get<APIHandler>().callGet(url);
    print('get list student');

    List<dynamic> students = [
      {
        "id": 1,
        "name": "Student 1",
        "description": "This is description of student 1"
      },
      {
        "id": 2,
        "name": "Student 2",
        "description": "This is description of student 2"
      },
      {
        "id": 3,
        "name": "Student 3",
        "description": "This is description of student 3"
      },
      {
        "id": 4,
        "name": "Student 4",
        "description": "This is description of student 4"
      }
    ];

    // return apiResponse.data[Constant.data] ?? [];
    return students;
  }
}
