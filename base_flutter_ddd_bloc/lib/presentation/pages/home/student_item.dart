

import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../update_student/update_student_page.dart';

class StudentItem extends StatelessWidget {
  StudentItem({
    Key? key,
    required this.student,
    required this.onPressedItem,
  }) : super(key: key);

  final Student student;
  final Function(Student item) onPressedItem;
  final StudentCubit _studentCubit = GetIt.I.get<StudentCubit>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => onPressedItem(student),
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: Palette.background,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              student.name,
                              style: textTheme.titleLarge,
                            ),
                            Text(
                              student.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.titleMedium?.copyWith(
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 2),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            await UpdateStudentPage.show(context, student);
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {
                            print("click delete");
                            showConfirmDeleteStudentDialog();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  const Divider(
                    height: 8,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showConfirmDeleteStudentDialog() {
    Widget yesButton = TextButton(
        onPressed: () {
          print("Yes");
          _studentCubit.deleteStudent(student.id);
          Navigator.pop(navigationKey.currentContext!);
        },
        child: const Text("Yes"));
    Widget noButton = TextButton(
        onPressed: () {
          Navigator.pop(navigationKey.currentContext!);
        },
        child: const Text("No"));

    AlertDialog alert = AlertDialog(
      title: const Text("Delete"),
      content: const Text("Do you want to delete?"),
      actions: [noButton, yesButton],
    );

    showDialog(
        context: navigationKey.currentContext!, builder: (context) => alert);
  }
}
