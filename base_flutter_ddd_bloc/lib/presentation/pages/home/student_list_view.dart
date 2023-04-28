import 'package:base_flutter_ddd_bloc/presentation/pages/home/student_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/student/student.dart';

class StudentListView extends StatefulWidget {
  List<Student> students;

  StudentListView({Key? key, required this.students}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView.builder(
          itemCount: widget.students.length,
          itemBuilder: (context, index) {
            return StudentItem(
                student: widget.students[index],
                onPressedItem: (student) {
                  print('item click');
                });
          },
        ),
        onRefresh: () async {
          print('refresh list');
        });
  }
}
