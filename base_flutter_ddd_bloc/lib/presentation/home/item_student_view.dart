import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/student_edit/student_edit_page.dart';
import 'package:flutter/material.dart';

class StudentItem extends StatelessWidget {
  const StudentItem({
    Key? key,
    required this.student,
    required this.onPressedItem,
  }) : super(key: key);

  final Student student;
  final Function(Student item) onPressedItem;

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
                              student.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.subtitle1?.copyWith(
                                height: 22 / 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 2),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            StudentEditPage.show(context, student);
                          },
                          icon: const Icon(Icons.edit,color: Colors.grey,)),
                      IconButton(
                          onPressed: () {
                            print("click delete");
                          }, icon: const Icon(Icons.delete,color: Colors.red,))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
