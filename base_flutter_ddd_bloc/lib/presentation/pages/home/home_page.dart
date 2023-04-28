import 'package:base_flutter_ddd_bloc/application/student/student_cubit.dart';
import 'package:base_flutter_ddd_bloc/application/student/student_state.dart';
import 'package:base_flutter_ddd_bloc/presentation/core/style.dart';
import 'package:base_flutter_ddd_bloc/presentation/pages/home/student_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


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
    BlocProvider.of<StudentCubit>(context).getStudents();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Palette.body,
        title: const Text("Student"),
        centerTitle: true,
      ),
      body: BlocBuilder<StudentCubit, StudentState>(
        builder: (context, state) {
          if (state is StudentLoading) {
            EasyLoading.show();
          } else if(state is StudentUpdated){
            BlocProvider.of<StudentCubit>(context).getStudents();
            EasyLoading.dismiss();
          }else{
            EasyLoading.dismiss();
          }
          return state is! StudentLoaded
              ? const SizedBox()
              : StudentListView(students: state.items);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("addd");
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
