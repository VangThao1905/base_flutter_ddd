import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentEditPage extends StatefulWidget {
  final Student student;

  const StudentEditPage({Key? key, required this.student}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StudentEditPage();

  static show(BuildContext context, Student student) {
    return Navigator.pushNamed(
      context,
      RouteName.studentEdit,
      arguments: <String, dynamic>{Constant.student: student},
    );
  }
}

class _StudentEditPage extends State<StudentEditPage> {
  TextEditingController studentIdController = TextEditingController(text: '');
  TextEditingController studentNameController = TextEditingController(text: '');
  TextEditingController studentDescriptionController =
      TextEditingController(text: '');

  @override
  void initState() {
    //load data to view
    loadStudentData();
    super.initState();
  }

  void loadStudentData() {
    studentIdController.text = widget.student.id.toString();
    studentNameController.text = widget.student.name.toString();
    studentDescriptionController.text = widget.student.description.toString();

    print("student id:${studentIdController.text.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Update student"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: studentIdController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: studentNameController,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: studentDescriptionController,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: () {
              String studentName = studentNameController.text.toString();
              String studentDes = studentDescriptionController.text.toString();
              if(studentName.isNotEmpty && studentDes.isNotEmpty){
                // Student newStudent = Student(widget.student.id, studentName, studentDes);
              }else{
                print("Please entry enough info");
              }

            }, child: const Text('Update'))
          ],
        ),
      ),
    );
    // return Dialog(
    //
    // );
  }
}
