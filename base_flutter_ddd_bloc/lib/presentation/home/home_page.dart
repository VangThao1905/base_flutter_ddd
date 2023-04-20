import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'student_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentCubit, StudentState>(
      builder: (context, state) {
        return state.when(loading: () {
          EasyLoading.show();
          return const SizedBox();
        }, loaded: (students) {
          EasyLoading.show();
          return Scaffold(
              backgroundColor: Palette.bgListStudent,
              appBar: AppBar(
                elevation: 1,
                shadowColor: Palette.shadowAppBar,
                title: const Text("Student"),
                centerTitle: true,
              ),
              body: const StudentListView());
        }, error: (message) {
          return Center(
            child: Text("Error:$message"),
          );
        });
      },
    );
  }
}
