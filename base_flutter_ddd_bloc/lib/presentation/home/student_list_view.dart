import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


class StudentListView extends StatefulWidget {
  const StudentListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  late StudentCubit bloc;

  @override
  void initState() {
    bloc = GetIt.I.get<StudentCubit>();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      bloc.getStudents();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return RefreshIndicator(
        child: BlocBuilder<StudentCubit, StudentState>(
            builder: (context, state) {
              return state.when(loading: () {
                return SizedBox(child: CircularProgressIndicator());
              }, loaded: (items) {
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      title: Text(items[index].name),
                      onTap: () {
                        print("click item");
                      },
                    );
                  },
                );
              }, error: (message) {
                return SizedBox(
                  child: Text("error"),
                );
              });
            }),
        onRefresh: () async {
          bloc.getStudents();
        });
  }
}
