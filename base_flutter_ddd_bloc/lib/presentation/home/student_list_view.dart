import 'package:base_flutter_ddd_bloc/application/core/constants.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_bloc.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_event.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/domain/student/student.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/detail/detail_page.dart';
import 'package:base_flutter_ddd_bloc/presentation/widgets/failure_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'item_student_view.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  late StudentBloc bloc;

  @override
  void initState() {
    bloc = GetIt.I.get(instanceName: Constant.studentAll);

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      bloc.add(const StudentEvent.init());
    });
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return RefreshIndicator(
        child: BlocBuilder<StudentBloc, StudentState>(
            bloc: bloc,
            builder: (context, state) {
              if (state.errorMessage.isNotEmpty) {
                return ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 52),
                    FailureView(),
                  ],
                );
              }

              return PagedListView<int, Student>.separated(
                pagingController: state.pageController!,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 1, thickness: 1);
                },
                builderDelegate: PagedChildBuilderDelegate<Student>(
                  itemBuilder: (context, item, index) => StudentItem(
                    student: item,
                    onPressedItem: (Student item) {
                      DetailPage.show(context, item);
                    },
                  ),
                  noItemsFoundIndicatorBuilder: (context) {
                    return Container(
                      padding: const EdgeInsets.only(top: 145),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.no_accounts),
                          const SizedBox(height: 8),
                          Text(
                            "No student.",
                            style: textTheme.subtitle1?.copyWith(
                              color: Palette.textNote,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            }),
        onRefresh: () async {
          bloc.add(const StudentEvent.refresh());
        });
  }
}
